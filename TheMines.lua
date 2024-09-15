if _G.Exe then
	print('lol')
	return
end
_G.Exe = true
local function Billboard(child, name, color, title)
    local Billboard = Instance.new("BillboardGui") do
    Billboard.Active = true
    Billboard.AlwaysOnTop = true
    Billboard.ClipsDescendants = true
    Billboard.LightInfluence = 1
    Billboard.Size = UDim2.new(300, 0, 300, 0)
    Billboard.ResetOnSpawn = false
    Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Billboard.Parent = child
    Billboard.Name = title
    local Title = Instance.new("TextLabel")
    Title.TextSize = 25
    Title.Font = "Oswald"
    Title.TextColor3 = color
    Title.BackgroundColor3 = Color3.new(1, 1, 1)
    Title.BackgroundTransparency = 1
    Title.BorderColor3 = Color3.new(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Visible = true
    local uistroke = Instance.new("UIStroke")
    uistroke.Thickness = 1
    uistroke.Parent = Title
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
    Title.Text = string.format('%s\n[ %s ]', (name or child.Name), math.floor((workspace.CurrentCamera.CFrame.Position - child:GetPivot().Position).Magnitude))
game:GetService('RunService').RenderStepped:Wait()
            Title.Parent = Billboard
              end)
        end)
end
end
local function Highlight(child, name, color, title)
    Billboard(child, name, color, title)
    local Highlight = Instance.new("Highlight") do
    Highlight.Parent = child
    Highlight.Adornee = child
    Highlight.FillTransparency = _G.Fill
    Highlight.OutlineTransparency = _G.Outline
    Highlight.Enabled = _G.Highlight
    Highlight.Name = title
    Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Highlight.OutlineColor = Color3.new(1,1,1)
    Highlight.FillColor = color
end
end
local function Billboard2(child, name, color, title)
    local Billboard = Instance.new("BillboardGui") do
    Billboard.Active = true
    Billboard.AlwaysOnTop = true
    Billboard.ClipsDescendants = true
    Billboard.LightInfluence = 1
    Billboard.Size = UDim2.new(300, 0, 300, 0)
    Billboard.ResetOnSpawn = false
    Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Billboard.Parent = child
    Billboard.Name = title
    local Title = Instance.new("TextLabel")
    Title.TextSize = 25
    Title.Font = "Oswald"
    Title.TextColor3 = color
    Title.BackgroundColor3 = Color3.new(1, 1, 1)
    Title.BackgroundTransparency = 1
    Title.BorderColor3 = Color3.new(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Visible = true
    local uistroke = Instance.new("UIStroke")
    uistroke.Thickness = 1
    uistroke.Parent = Title
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
    Title.Text = string.format('%s\n[ %s ]', (name or child.Name), math.floor((workspace.CurrentCamera.CFrame.Position - child:GetPivot().Position).Magnitude))
game:GetService('RunService').RenderStepped:Wait()
            Title.Parent = Billboard
              end)
        end)
end
end
local function Highlight2(child, name, color, title)
    Billboard2(child, name, color, title)
    local Highlight = Instance.new("Highlight") do
    Highlight.Parent = child
    Highlight.Adornee = child
    Highlight.FillTransparency = _G.Fill
    Highlight.OutlineTransparency = _G.Outline
    Highlight.Enabled = _G.Highlight
    Highlight.Name = title
    Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Highlight.OutlineColor = Color3.new(1,1,1)
    Highlight.FillColor = color
if child:IsA("Part") then
child.Color = Color3.new(0,0,0)
child.Transparency = 0
end		
end
end
local function CylinderESP(child, name, color, title)
Billboard(child, name, color, title)
local Adornment = Instance.new("CylinderHandleAdornment")
Adornment.Height = child.Size.Y * 2
Adornment.Radius = child.Size.X * 0.75
Adornment.CFrame = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90), 0, 0)
Adornment.Color3 = color
Adornment.Transparency = 0.6
Adornment.AlwaysOnTop = true
Adornment.ZIndex = 10
Adornment.Adornee = child
Adornment.Name = title
Adornment.Parent = child
end
local function SphereESP(child, name, color, title)
Billboard(child, name, color, title)
local Adornment = Instance.new("SphereHandleAdornment", child)
Adornment.Radius = child.Size.X * 1.085
Adornment.CFrame = CFrame.new() * CFrame.Angles(math.rad(90), 0, 0)
Adornment.Color3 = color
Adornment.Transparency = 0.6
Adornment.AlwaysOnTop = true
Adornment.ZIndex = 10
Adornment.Adornee = child
Adornment.Name = title
Adornment.Parent = child
end
function Distance(part, extra)
	if not extra then extra = 15 end
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not part then
		return false
	end
	local distanceToPart = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
	if distanceToPart <= extra then
		return true
	end
	return false
end

local rep = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'
local lib =   loadstring(game:HttpGet(rep.. 'Library.lua'))()
local save =  loadstring(game:HttpGet(rep.. 'addons/SaveManager.lua'))()
local theme = loadstring(game:HttpGet(rep.. 'addons/ThemeManager.lua'))()

local Options = getgenv().Options

local Window = lib:CreateWindow({
    Title = 'YPoint | v5.0',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0
})
function notify(name, timer)
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/Library.lua'))()
library:Notify(name, timer)
end
local Tabs = {
  Visual = Window:AddTab("Main"),
}
local Group = {
  Left3 = Tabs.Visual:AddLeftGroupbox("Disabled"),
  Left4 = Tabs.Visual:AddLeftGroupbox("Camera"),
  Right3 = Tabs.Visual:AddRightGroupbox("ESP"),
  Right4 = Tabs.Visual:AddRightGroupbox('Players'),
  Left5 = Tabs.Visual:AddLeftGroupbox('Misc'),
  
}
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.FieldOfView then game:GetService("Workspace").Camera.FieldOfView=_G.FieldOfViewe;end end);end);Group.Right4:AddSlider("",{Text="Speed Boots",Default=16,Min=16,Max=21,Rounding=1,Compact=true,Callback=function(v80)_G.SelectBoots=v80;end});_G.SelectBoots=16;_G.FieldOfViewe=120;_G.SpeedHack=true;
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if
_G.SpeedHack then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.SelectBoots;end;end);end)

Group.Right4:AddButton({
        Text = "Reset Character",
        DoubleClick = true,
        Func = function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end})

game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.SlowDownnnonononoo then if (game.Players.LocalPlayer.Character.Head.Massless==true) then local v451=1726 -(1668 + 58) ;local v452;while true do if (v451==(626 -(512 + 114))) then v452=false;game.Players.LocalPlayer.Character.Head.Massless=v452;game.Players.LocalPlayer.Character.LeftFoot.Massless=v452;game.Players.LocalPlayer.Character.LeftHand.Massless=v452;v451=2 -1 ;end if ((1 -0)==v451) then game.Players.LocalPlayer.Character.LeftLowerArm.Massless=v452;game.Players.LocalPlayer.Character.LeftLowerLeg.Massless=v452;game.Players.LocalPlayer.Character.LeftUpperArm.Massless=v452;game.Players.LocalPlayer.Character.LeftUpperLeg.Massless=v452;v451=6 -4 ;end if (v451==(2 + 1)) then game.Players.LocalPlayer.Character.RightLowerLeg.Massless=v452;game.Players.LocalPlayer.Character.RightUpperArm.Massless=v452;game.Players.LocalPlayer.Character.RightUpperLeg.Massless=v452;game.Players.LocalPlayer.Character.UpperTorso.Massless=v452;break;end if (v451==2) then game.Players.LocalPlayer.Character.LowerTorso.Massless=v452;game.Players.LocalPlayer.Character.RightFoot.Massless=v452;game.Players.LocalPlayer.Character.RightHand.Massless=v452;game.Players.LocalPlayer.Character.RightLowerArm.Massless=v452;v451=3;end end end end end);end);Group.Right4:AddToggle("",{Text="No Slow",Default=false,Tooltip="No Slow Down",Callback=function(v85)_G.SlowDownnnonononoo=v85;if (_G.SlowDownnnonononoo==false) then local v245=true;game.Players.LocalPlayer.Character.Head.Massless=v245;game.Players.LocalPlayer.Character.LeftFoot.Massless=v245;game.Players.LocalPlayer.Character.LeftHand.Massless=v245;game.Players.LocalPlayer.Character.LeftLowerArm.Massless=v245;game.Players.LocalPlayer.Character.LeftLowerLeg.Massless=v245;game.Players.LocalPlayer.Character.LeftUpperArm.Massless=v245;game.Players.LocalPlayer.Character.LeftUpperLeg.Massless=v245;game.Players.LocalPlayer.Character.LowerTorso.Massless=v245;game.Players.LocalPlayer.Character.RightFoot.Massless=v245;game.Players.LocalPlayer.Character.RightHand.Massless=v245;game.Players.LocalPlayer.Character.RightLowerArm.Massless=v245;game.Players.LocalPlayer.Character.RightLowerLeg.Massless=v245;game.Players.LocalPlayer.Character.RightUpperArm.Massless=v245;game.Players.LocalPlayer.Character.RightUpperLeg.Massless=v245;game.Players.LocalPlayer.Character.UpperTorso.Massless=v245;end end});
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()if (_G.ClosetExitFix and (game.Players.LocalPlayer.Character:GetAttribute("Hiding")==true)) then game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer();end end);Group.Right4:AddToggle("",{Text="Closet Exit Fixed",Default=false,Tooltip="Closet Exit Fast",Callback=function(v104)_G.ClosetExitFix=v104;end})
Group.Right4:AddButton({
		Text = "Fly GUI",
		Func = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cold-Script/FLYDOORS/main/README.md'))()			
end})						
Group.Left3:AddToggle('',{
            Text = "Disabled Void ROBLOX",
            Callback = function(value)
if value then
workspace.FallenPartsDestroyHeight = 0 / 0
        else
            workspace.FallenPartsDestroyHeight = OldVoid
                end
            end})
Group.Left3:AddToggle('',{
            Text = "Disabled Seek Trigger",
            Callback = function(value)
_G.Trigger = value               
while _G.Trigger do wait(1)
 for _,v in pairs(workspace:GetDescendants()) do                   
if v.Name == "TriggerEventCollision" then
v:Destroy()
              end
           end
        end                
    end})

game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.MSHNL then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Chandelier") then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Chandelier:Destroy();end end end);end);game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.MSHNL then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Light_Fixtures") then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Light_Fixtures:Destroy();end end end);end)
Group.Left3:AddToggle("",{Text = "Disabled Light",Default = false,Tooltip = "No Light",Callback = function(NL)_G.MSHNL = NL ;end})  
Group.Left3:AddToggle("",{Text="Disabled Halt",Default=false,Tooltip="Anti Halt",Callback=function(v122)local v123=0;while true do if (v123==(1480 -(641 + 839))) then _G.BypassHalte=v122;if (_G.BypassHalte==true) then local v472=913 -(910 + 3) ;local v473;while true do if (v472==(0 -0)) then v473=game:GetService("ReplicatedStorage").ClientModules.EntityModules.Shade;v473.Parent=game.Workspace;break;end end elseif (_G.BypassHalte==false) then local v642=1684 -(1466 + 218) ;local v643;while true do if (v642==(0 + 0)) then v643=game.Workspace.Shade;v643.Parent=game:GetService("ReplicatedStorage").ClientModules.EntityModules;break;end end end break;end end end});
Group.Left3:AddToggle('',{
            Text = "Disabled Giggle",
            Callback = function(value)
_G.AntiGiggle = value               
while _G.AntiGiggle do wait(0.3)
for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do                   
if v.Name == "GiggleCeiling" then
v:Destroy()
              end
           end
        end                
    end})
Group.Left3:AddToggle('',{
            Text = "Disabled Screech",
            Callback = function(value)
if value then
Screech = game:GetService("ReplicatedStorage").Entities.Screech:Destroy()
			else
Screech:Disconnect()
			end			
    end})
Group.Left3:AddToggle('',{
            Text = "Disabled Gloom Egg",
            Callback = function(value)
_G.AntiEgg = value               
while _G.AntiEgg do wait(0.3)
for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do                   
if v.Name == "GloomPile" then
v:Destroy()
              end
           end
        end                
    end})
Group.Left3:AddToggle('',{
            Text = "Disabled Figure",
            Callback = function(value)
_G.AntiFigure = value               
while _G.AntiFigure do wait(0.3)
for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do                   
if v.Name == "FigureSetup" then
v:Destroy()
              end
           end
        end                
    end})
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.Eyhasd then if workspace:FindFirstChild("Eyes") then game:GetService("ReplicatedStorage").EntityInfo.MotorReplication:FireServer(0,(_G.Eyhasd and  -(452 -332)) or (0 -0) ,0,false);end end end);end);Group.Left3:AddToggle("",{Text="Disabled Eyes",Default=false,Tooltip="Eyes No Damage",Callback=function(v133)_G.Eyhasd=v133;end});


Group.Left4:AddSlider("",{Text="Field of View ",Default=120,Min=1226 -(1074 + 82) ,Max=120,Rounding=0 -0 ,Compact=true,Callback=function(v81)_G.FieldOfViewe=v81;end});
Group.Left4:AddToggle("",{Text="Enable Field of View",Default=false,Tooltip="Field of View Hack",Callback=function(v83)local v84=1455 -(990 + 465) ;while true do if (0==v84) then if (v83==true) then local v449=0 + 0 ;local v450;while true do if (0==v449) then v450=game:GetService("TweenService");v450:Create(game.Workspace.CurrentCamera,TweenInfo.new(0.9),{FieldOfView=_G.FieldOfViewe}):Play();break;end end elseif (v83==false) then local v621=game:GetService("TweenService");v621:Create(game.Workspace.CurrentCamera,TweenInfo.new(0.9),{FieldOfView=31 + 39 }):Play();end wait(0.8 + 0 );v84=3 -2 ;end if (v84==1) then _G.FieldOfView=v83;break;end end end})
Group.Left4:AddToggle('',{
    Text = 'FullBright',
    Default = false,
    Tooltip = 'Turns the room bright',
    Callback = function(v)
        if v then
            game.Lighting.Brightness = 3
            game.Lighting.OutdoorAmbient = Color3.new(1,1,1)
            game.Lighting.GlobalShadows = false
        else
            game.Lighting.Brightness = 1
            game.Lighting.OutdoorAmbient = Color3.new(0,0,0)
            game.Lighting.GlobalShadows = true
       end
    end
})
Group.Left4:AddToggle('',{
    Text = 'No Fog',
    Default = false,
    Tooltip = 'Turns the room nofog',
    Callback = function(v)
        if v then
            game.Lighting.FogEnd = 9e9
        else
            game.Lighting.FogEnd = 200
       end
    end
})
Group.Left4:AddToggle('',{
		Text = "Notify Entity",
		Default = false,
		Callback = function(v)
if v then
			EntityNotifier = workspace.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "Eyes" then
					notify("Eyes has spawned, dont look into its eyes!", 3)
					
				elseif child.Name == "RushMoving" and Distance(child:FindFirstChildWhichIsA("BasePart"), 1000) then
					notify("Rush has spawn, find the locker hide now!", 3)
					
				elseif child.Name == "AmbushMoving" and Distance(child:FindFirstChildWhichIsA("BasePart"), 1000) then
					notify("Ambush has spawn, find the locker hide now!", 3)

				elseif child.Name == "FigureRig" then
					notify("Figure has spawn, be careful and don't make any noise!", 3)
				elseif child.Name == "GiggleCeiling" then
					notify("Giggle has spawn, please be careful with the ceiling!", 3)
									
				end
						
			end)
			EntityNotifierScreech = workspace.CurrentCamera.ChildAdded:Connect(function(child)
				task.wait()
				if child.Name == "Screech" then
					notify("Screech has me, Look its now for me", 3)
				end
			end)
		else
			EntityNotifier:Disconnect()
			EntityNotifierScreech:Disconnect()
			end
		end})
Group.Left4:AddButton({Text='Effect Light XD',Func = function()
			
local DepthOfField = Instance.new("DepthOfFieldEffect", game.Lighting)
DepthOfField.FarIntensity = 0.3
DepthOfField.FocusDistance = 20
DepthOfField.InFocusRadius = 0
DepthOfField.NearIntensity = 0

local SunRays = Instance.new("SunRaysEffect", game.Lighting)
SunRays.Intensity = 0.1
SunRays.Spread = 0.8

local ColorCorrection = Instance.new("ColorCorrectionEffect", game.Lighting)
ColorCorrection.Brightness = 0.025
ColorCorrection.Contrast = 0.13
ColorCorrection.Saturation = 0.15

game.Lighting.GlobalShadows = false
game.Lighting.OutdoorAmbient = Color3.fromRGB(255,255,255)
			
			end})				
Group.Right3:AddToggle('',{
    Text = "Doors ESP", 
    Callback = function(value)
if value then               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
Highlight(v, "Door", Color3.fromRGB(80,255,200), "DoorESP")
					end		
				end					
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
Highlight(v, "Door", Color3.fromRGB(80,255,200), "DoorESP")
end
end                
ESP1 = workspace.CurrentRooms.ChildAdded:Connect(function(child)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
Highlight(v, "Door", Color3.fromRGB(80,255,200), "DoorESP")
end
end
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
Highlight(v, "Door", Color3.fromRGB(80,255,200), "DoorESP")
end
end                        
end)
else
ESP1:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "DoorESP" then
v:Destroy()
end
end
end 
end})
Group.Right3:AddToggle('',{
    Text = "Key ESP", 
    Callback = function(value)
if value then               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "KeyObtain" then
Highlight(v, "Key", Color3.fromRGB(80,255,200), "KeyESP")
					end		
				end					
ESPv1 = workspace.CurrentRooms.ChildAdded:Connect(function(child)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "KeyObtain" then
Highlight(v, "Key", Color3.fromRGB(80,255,200), "KeyESP")
end
end                        
end)
else
ESPv1:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "KeyESP" then
v:Destroy()
end
end
end 
end})
Group.Right3:AddToggle('',{
    Text = "Breaker & Book ESP", 
    Callback = function(value)
if value then               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "LiveHintBook" then
Highlight(v, "Book", Color3.fromRGB(80,255,200), "BookESP")
elseif v.Name == "LiveBreakerPolePickup" then
Highlight(v, "Fuse", Color3.fromRGB(80,255,200), "BookESP")						
					end		
				end					
ESPv2 = workspace.CurrentRooms.ChildAdded:Connect(function(child)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "LiveHintBook" then
Highlight(v, "Book", Color3.fromRGB(80,255,200), "BookESP")
elseif v.Name == "LiveBreakerPolePickup" then
Highlight(v, "Fuse", Color3.fromRGB(80,255,200), "BookESP")	
end
end                        
end)
else
ESPv2:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "BookESP" then
v:Destroy()
end
end
end 
end})
Group.Right3:AddToggle('',{
    Text = "Lever ESP", 
    Callback = function(value)
if value then               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "LeverForGate" then
Highlight(v, "Lever Gate", Color3.fromRGB(100,100,100), "LeverESP")
elseif v.Name == "TimerLever" then
Highlight(v, "Timer Lever", Color3.fromRGB(100,100,100), "LeverESP")						
					end		
				end					
ESPv3 = workspace.CurrentRooms.ChildAdded:Connect(function(child)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "LeverForGate" then
Highlight(v, "Lever Gate", Color3.fromRGB(100,100,100), "LeverESP")
elseif v.Name == "TimerLever" then
Highlight(v, "Timer Lever", Color3.fromRGB(100,100,100), "LeverESP")									
end
end                        
end)
else
ESPv3:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "TimerESP" then
v:Destroy()
end
end
end 
end})

Group.Right3:AddToggle('',{
    Text = "Generator ESP", 
    Callback = function(value)
if value then
                
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesGenerator" then
Highlight(v, "Mines Generator", Color3.fromRGB(80,255,200), "MinesESP1")
end
end
ESP2 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
                        
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesGenerator" then
Highlight(v, "Mines Generator", Color3.fromRGB(80,255,200), "MinesESP1")
end
end
end)
else
ESP2:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesESP1" then
v:Destroy()
end
end
end 
end})    
Group.Right3:AddToggle('',{
    Text = "Fuse ESP", 
    Callback = function(value)
if value then
                
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "FuseObtain" then
Highlight(v, "Fuse", Color3.fromRGB(80,255,200), "MinesESP3")
end
end
ESP3 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
                        
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "FuseObtain" then
Highlight(v, "Fuse", Color3.fromRGB(80,255,200), "MinesESP3")
end
end
end)
else
ESP3:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesESP3" then
v:Destroy()
end
end
end 
end})    
Group.Right3:AddToggle('',{
    Text = "Box ESP", 
    Callback = function(value)
if value then
                
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Toolbox" then
Highlight(v, "Box", Color3.fromRGB(80,255,200), "MinesESP2")
end
end
ESP4 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
                        
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Toolbox" then
Highlight(v, "Box", Color3.fromRGB(80,255,200), "MinesESP2")
end
end
end)
else
ESP4:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesESP2" then
v:Destroy()
end
end
end 
end})

Group.Right3:AddToggle('',{
    Text = "Grumble ESP", 
    Callback = function(value)
if value then
                
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Grumbo" then
Highlight2(v, "Grumble", Color3.fromRGB(255,255,255), "MinesESP6")
end
end
ESP6 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
                        
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Grumbo" then
Highlight2(v, "Grumble", Color3.fromRGB(255,255,255), "MinesESP6")
end
end
end)
else
ESP6:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesESP6" then
v:Destroy()
end
end
end 
end})
Group.Right3:AddToggle('',{
    Text = "Locker ESP", 
    Callback = function(value)
if value then
                
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Locker_Large" then
Highlight(v, "Locker", Color3.fromRGB(255,255,255), "MinesESP7")
end
end
ESP7 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
                        
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Locker_Large" then
Highlight(v, "Locker", Color3.fromRGB(255,255,255), "MinesESP7")
end
end
end)
else
ESP7:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesESP7" then
v:Destroy()
end
end
end 
end})
Group.Right3:AddToggle('',{
    Text = "Entity ESP", 
    Callback = function(value)
if value then
                
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "RushNew" and v.Parent.Name == "RushMoving" then
CylinderESP(v, "Rush", Color3.fromRGB(50,50,50), "RushESP")
elseif v.Name == "RushNew" and v.Parent.Name == "AmbushMoving" then
CylinderESP(v, "Ambush", Color3.fromRGB(0,255,0), "AmbushESP")
elseif v.Name == "FigureRig" then
Highlight2(v, "Figure", Color3.fromRGB(255, 60, 60), "FigureESP")
elseif v.Name == "Handle" and v.Parent.Name == "GiggleCeiling" then
CylinderESP(v, "Giggle", Color3.fromRGB(255,0,0), "TrapGiggleESP")
elseif v.Name == "SeekMovingNewClone" then
Highlight2(v, "Seek", Color3.fromRGB(30,30,30), "SeekESP")
elseif v.Name == "BackdoorRush" then
CylinderESP(v, "Blitz", Color3.fromRGB(0,180,0), "BDRushESP")
elseif v.Name == "BackdoorLookman" then
CylinderESP(v, "Lookman", Color3.fromRGB(50,50,50), "BDLookmanESP")
elseif v.Name == "FigureRagdoll" then
Highlight2(v, "Figure", Color3.fromRGB(255, 255, 100), "SHMFigureESP")
elseif v.Name == "HumanoidRootPart" and v.Parent.Name == "JeffTheKiller" then
CylinderESP(v, "Jeff", Color3.fromRGB(255,255,255), "JTKESP")
elseif v.Name == "Snare" then
Highlight2(v, "Snare", Color3.fromRGB(255), "SnareESP")	
elseif v.Name == "SeekMoving" then
Highlight2(v, "Seek", Color3.fromRGB(50,50,50), "SeekESP")
elseif v.Name == "A60" then
CylinderESP(v, "A60", Color3.fromRGB(255), "A60ESP")
elseif v.Name == "A120" then
CylinderESP(v, "A120", Color3.fromRGB(50,50,50), "A120ESP")
elseif v.Name == "Core" and v.Parent.Name == "Eyes" then
SphereESP(v, "Eyes", Color3.fromRGB(0,0,255), "EyesESP")
elseif v.Name == "ClosetSpace" then
Highlight2(v, "Vacuum", Color3.fromRGB(255,255,255), "VacuumESP")						
end
end
ESP8 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "RushNew" and v.Parent.Name == "RushMoving" then
CylinderESP(v, "Rush", Color3.fromRGB(50,50,50), "RushESP")
elseif v.Name == "RushNew" and v.Parent.Name == "AmbushMoving" then
CylinderESP(v, "Ambush", Color3.fromRGB(0,255,0), "AmbushESP")
elseif v.Name == "FigureRig" then
Highlight2(v, "Figure", Color3.fromRGB(255, 60, 60), "FigureESP")
elseif v.Name == "Handle" and v.Parent.Name == "GiggleCeiling" then
CylinderESP(v, "Giggle", Color3.fromRGB(255,0,0), "TrapGiggleESP")
elseif v.Name == "SeekMovingNewClone" then
Highlight2(v, "Seek", Color3.fromRGB(30,30,30), "SeekESP")
elseif v.Name == "BackdoorRush" then
CylinderESP(v, "Blitz", Color3.fromRGB(0,180,0), "BDRushESP")
elseif v.Name == "BackdoorLookman" then
CylinderESP(v, "Lookman", Color3.fromRGB(50,50,50), "BDLookmanESP")
elseif v.Name == "FigureRagdoll" then
Highlight2(v, "Figure", Color3.fromRGB(255, 255, 100), "SHMFigureESP")
elseif v.Name == "HumanoidRootPart" and v.Parent.Name == "JeffTheKiller" then
CylinderESP(v, "Jeff", Color3.fromRGB(255,255,255), "JTKESP")
elseif v.Name == "Snare" then
Highlight2(v, "Snare", Color3.fromRGB(255), "SnareESP")	
elseif v.Name == "SeekMoving" then
Highlight2(v, "Seek", Color3.fromRGB(50,50,50), "SeekESP")
elseif v.Name == "A60" then
CylinderESP(v, "A60", Color3.fromRGB(255), "A60ESP")
elseif v.Name == "A120" then
CylinderESP(v, "A120", Color3.fromRGB(50,50,50), "A120ESP")
elseif v.Name == "Core" and v.Parent.Name == "Eyes" then
SphereESP(v, "Eyes", Color3.fromRGB(0,0,255), "EyesESP")
elseif v.Name == "ClosetSpace" then
Highlight2(v, "Vacuum", Color3.fromRGB(255,255,255), "VacuumESP")						
end
end
end)
else
ESP8:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "RushESP" then
v:Destroy()
elseif v.Name == "AmbushESP" then
v:Destroy()
elseif v.Name == "FigureESP" then
v:Destroy()
elseif v.Name == "TrapGiggleESP" then
v:Destroy()
elseif v.Name == "SeekESP" then
v:Destroy()
elseif v.Name == "BDRushESP" then
v:Destroy()
elseif v.Name == "SHMFigureESP" then
v:Destroy()
elseif v.Name == "JTKESP" then
v:Destroy()
elseif v.Name == "SnareESP" then
v:Destroy()
elseif v.Name == "A60ESP" then
v:Destroy()
elseif v.Name == "A120ESP" then
v:Destroy()
elseif v.Name == "EyesESP" then
v:Destroy()
elseif v.Name == "VacuumESP" then
v:Destroy()	
end
end
end 
end})

_G.Highlight = true
Group.Right3:AddToggle('',{
    Text = "Highlight", 
    Default = true,
    Callback = function(value)
_G.Highlight = value
end})	
_G.Fill = 0.5
Group.Right4:AddSlider("",{Text="Fill Transparency",Default=0.5,Min=0,Max=1,Rounding=1,Compact=true,Callback=function(value)_G.Fill = value;end});
_G.Outline = 0
Group.Right4:AddSlider("",{Text="Outline Transparency",Default=0,Min=0,Max=1,Rounding=1,Compact=true,Callback=function(value)_G.Outline = value;end});
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v89)local v90=0 -0 ;while true do if (v90==(0 + 0)) then if  not _G.InstantInteract then return;end if v89.IsA(v89,"ProximityPrompt") then if _G.InstantInteract then local v622=0 + 0 ;while true do if (v622==(0 + 0)) then v89.HoldDuration=0 + 0 ;v89.Enabled=true;break;end end end end break;end end end);Group.Left5:AddToggle("MyToggle",{Text="No Hold In Hotel And Rooms",Default=false,Tooltip="Fast E",Callback=function(v91)local v171=Instance.new("Sound");v171.Parent=game.SoundService;v171.SoundId="rbxassetid://4590657391";v171.Volume=11 -6 ;v171.PlayOnRemove=true;v171:Destroy();local v92=0 -0 ;while true do if (v92==(0 -0)) then _G.InstantInteract=v91;if (_G.InstantInteract==true) then for v519,v520 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do if v520:IsA("ProximityPrompt") then v520.HoldDuration=0 + 0 ;v520.Enabled=true;end end end break;end end end});
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.IncreasedDoors then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door").ClientOpen:FireServer();end end);end);Group.Left5:AddToggle("MyToggle",{Text="Opening Door Far",Default=false,Tooltip="Door Opening Far",Callback=function(v103)local v171=Instance.new("Sound");v171.Parent=game.SoundService;v171.SoundId="rbxassetid://4590657391";v171.Volume=11 -6 ;v171.PlayOnRemove=true;v171:Destroy();_G.IncreasedDoors=v103;end})
if _G.Admin then	
Admin = Tabs.Visual:AddRightGroupbox('Admin (Admin Only)')
Admin:AddToggle('',{
		Text='Auto ProximityPrompt',
			Callback = function(v)
			_G.PP = v
				while _G.PP do wait(1)
				for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Name == v.Name then
                    fireproximityprompt(v)
					end
				end
			end
		end
	})

Admin:AddToggle('',{
            Text = "Disabled Lockers",
            Callback = function(value)
_G.Locker = value               
while _G.Locker do wait()
for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do                   
if v.Name == "Locker_Large" then
v:Destroy()
              end
           end
        end                
    end})
Admin:AddToggle('',{
            Text = "Disabled Ladder",
            Callback = function(value)
_G.Locker = value               
while _G.Locker do wait()
for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do                   
if v.Name == "Ladder" then
v:Destroy()
              end
           end
        end                
    end})	
Admin:AddButton({Text='Infinite Yield',
    Func = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()    
    end})
end	
