local warningSound = Instance.new'Sound' 
warningSound.SoundId = 'rbxassetid://1570162306'
warningSound.Volume = 1
warningSound.Parent = game.Players.LocalPlayer.PlayerGui

local function Billboard(child, name, color, title)
    local Billboard = Instance.new("BillboardGui")
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
while wait() do
    Title.Text = string.format('%s\n[ %s ]', (name or child.Name), math.floor((workspace.CurrentCamera.CFrame.Position - child:GetPivot().Position).Magnitude))
game:GetService('RunService').RenderStepped:Wait()
            Title.Parent = Billboard
              end
        end)
end

local function Billboard2(child, name, color, title)
    local Billboard = Instance.new("BillboardGui")
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
while wait() do
    Title.Text = string.format('%s\n[ %s ]', (name or child.Name), math.floor((workspace.CurrentCamera.CFrame.Position - child:GetPivot().Position).Magnitude))
game:GetService('RunService').RenderStepped:Wait()
            Title.Parent = Billboard
              end
        end)
end

local rep = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'
local lib =   loadstring(game:HttpGet(rep.. 'Library.lua'))()
local save =  loadstring(game:HttpGet(rep.. 'addons/SaveManager.lua'))()
local theme = loadstring(game:HttpGet(rep.. 'addons/ThemeManager.lua'))()

local Options = getgenv().Options

local Window = lib:CreateWindow({
    Title = '(YOU HUB) Floor 2 Helper | v1.0',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0
})
function notify(Text)
    lib:Notify(Text)
	wait(0.3)
warningSound:Play() 
end

local Tabs = {
  Cheat = Window:AddTab("Players"),
  Visual = Window:AddTab("Visual"),
}
local Group = {
  Left2 = Tabs.Cheat:AddLeftGroupbox('Players'),
  Left3 = Tabs.Visual:AddLeftGroupbox("Disabled"),
  Right2 = Tabs.Visual:AddRightGroupbox("Anti"),
  Left4 = Tabs.Visual:AddLeftGroupbox("Camera"),
  Right3 = Tabs.Visual:AddRightGroupbox("ESP"),
}
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.FieldOfView then game:GetService("Workspace").Camera.FieldOfView=_G.FieldOfViewe;end end);end);Group.Left2:AddSlider("",{Text="Speed Boots",Default=16,Min=16,Max=21,Rounding=1,Compact=true,Callback=function(v80)_G.SelectBoots=v80;end});_G.SelectBoots=16;_G.FieldOfViewe=120;_G.SpeedHack=true;game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.SpeedBoost.Visible=true;
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if
_G.SpeedHack then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.SelectBoots;end;end);end)

Group.Left2:AddButton({
        Text = "Reset Character",
        DoubleClick = true,
        Func = function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end})

game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.SlowDownnnonononoo then if (game.Players.LocalPlayer.Character.Head.Massless==true) then local v451=1726 -(1668 + 58) ;local v452;while true do if (v451==(626 -(512 + 114))) then v452=false;game.Players.LocalPlayer.Character.Head.Massless=v452;game.Players.LocalPlayer.Character.LeftFoot.Massless=v452;game.Players.LocalPlayer.Character.LeftHand.Massless=v452;v451=2 -1 ;end if ((1 -0)==v451) then game.Players.LocalPlayer.Character.LeftLowerArm.Massless=v452;game.Players.LocalPlayer.Character.LeftLowerLeg.Massless=v452;game.Players.LocalPlayer.Character.LeftUpperArm.Massless=v452;game.Players.LocalPlayer.Character.LeftUpperLeg.Massless=v452;v451=6 -4 ;end if (v451==(2 + 1)) then game.Players.LocalPlayer.Character.RightLowerLeg.Massless=v452;game.Players.LocalPlayer.Character.RightUpperArm.Massless=v452;game.Players.LocalPlayer.Character.RightUpperLeg.Massless=v452;game.Players.LocalPlayer.Character.UpperTorso.Massless=v452;break;end if (v451==2) then game.Players.LocalPlayer.Character.LowerTorso.Massless=v452;game.Players.LocalPlayer.Character.RightFoot.Massless=v452;game.Players.LocalPlayer.Character.RightHand.Massless=v452;game.Players.LocalPlayer.Character.RightLowerArm.Massless=v452;v451=3;end end end end end);end);Group.Left2:AddToggle("",{Text="No Slow",Default=false,Tooltip="No Slow Down",Callback=function(v85)_G.SlowDownnnonononoo=v85;if (_G.SlowDownnnonononoo==false) then local v245=true;game.Players.LocalPlayer.Character.Head.Massless=v245;game.Players.LocalPlayer.Character.LeftFoot.Massless=v245;game.Players.LocalPlayer.Character.LeftHand.Massless=v245;game.Players.LocalPlayer.Character.LeftLowerArm.Massless=v245;game.Players.LocalPlayer.Character.LeftLowerLeg.Massless=v245;game.Players.LocalPlayer.Character.LeftUpperArm.Massless=v245;game.Players.LocalPlayer.Character.LeftUpperLeg.Massless=v245;game.Players.LocalPlayer.Character.LowerTorso.Massless=v245;game.Players.LocalPlayer.Character.RightFoot.Massless=v245;game.Players.LocalPlayer.Character.RightHand.Massless=v245;game.Players.LocalPlayer.Character.RightLowerArm.Massless=v245;game.Players.LocalPlayer.Character.RightLowerLeg.Massless=v245;game.Players.LocalPlayer.Character.RightUpperArm.Massless=v245;game.Players.LocalPlayer.Character.RightUpperLeg.Massless=v245;game.Players.LocalPlayer.Character.UpperTorso.Massless=v245;end end});
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()if (_G.ClosetExitFix and (game.Players.LocalPlayer.Character:GetAttribute("Hiding")==true)) then game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer();end end);Group.Left2:AddToggle("",{Text="Closet Exit Fixed",Default=false,Tooltip="Closet Exit Fast",Callback=function(v104)_G.ClosetExitFix=v104;end})    
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
Group.Right2:AddToggle("",{Text="Anti Halt",Default=false,Tooltip="Anti Halt",Callback=function(v122)local v123=0;while true do if (v123==(1480 -(641 + 839))) then _G.BypassHalte=v122;if (_G.BypassHalte==true) then local v472=913 -(910 + 3) ;local v473;while true do if (v472==(0 -0)) then v473=game:GetService("ReplicatedStorage").ClientModules.EntityModules.Shade;v473.Parent=game.Workspace;break;end end elseif (_G.BypassHalte==false) then local v642=1684 -(1466 + 218) ;local v643;while true do if (v642==(0 + 0)) then v643=game.Workspace.Shade;v643.Parent=game:GetService("ReplicatedStorage").ClientModules.EntityModules;break;end end end break;end end end});
Group.Right2:AddToggle('',{
            Text = "Anti Giggle",
            Callback = function(value)
_G.AntiGiggle = value               
while _G.AntiGiggle do wait()
for _,v in pairs(workspace:GetDescendants()) do                   
if v.Name == "GiggleCeiling" then
v:Destroy()
              end
           end
        end                
    end})
Group.Right2:AddToggle('',{
            Text = "Anti Screech",
            Callback = function(value)
if value then
Screech = game:GetService("ReplicatedStorage").Entities.Screech
Screech:Destroy()
			else
Screech:Disconnect()
			end			
    end})
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.Eyhasd then if workspace:FindFirstChild("Eyes") then game:GetService("ReplicatedStorage").EntityInfo.MotorReplication:FireServer(0,(_G.Eyhasd and  -(452 -332)) or (0 -0) ,0,false);end end end);end);Group.Right2:AddToggle("",{Text="Anti Eyes",Default=false,Tooltip="Eyes No Damage",Callback=function(v133)_G.Eyhasd=v133;end});


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
		Text = "Notify Helper",
		Callback = function(v)
if v then
			EntityNotifier = workspace.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "Eyes" then
					notify("Eyes has spawned, dont look into its eyes!")
					
				elseif child.Name == "RushMoving" and Distance(child:FindFirstChildWhichIsA("BasePart"), 1000) then
					notify("Rush has spawn, find the locker hide now!")
					
				elseif child.Name == "AmbushMoving" and Distance(child:FindFirstChildWhichIsA("BasePart"), 1000) then
					notify("Ambush has spawn, find the locker hide now!")

				elseif child.Name == "FigureRig" then
					notify("Figure has spawn, be careful and don't make any noise!")
				elseif child.Name == "GiggleCeiling" then
					notify("Giggle has spawn, please be careful with the ceiling!")
									
				end
						
			end)
			EntityNotifierScreech = workspace.CurrentCamera.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "Screech" then
					notify("Screech has me, Look its now for me")
				end
			end)
		else
			EntityNotifier:Disconnect()
			EntityNotifierScreech:Disconnect()
			end
		end})			
Group.Right3:AddToggle('',{
    Text = "Doors ESP", 
    Callback = function(value)
if value then
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
Billboard(v, "Door", Color3.fromRGB(80,255,200), "DoorESP")
end
				end					
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
Billboard(v, "Door", Color3.fromRGB(80,255,200), "DoorESP")
end
end                
ESP1 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
 wait(1)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
Billboard(v, "Door", Color3.fromRGB(80,255,200), "DoorESP")
end
end
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
Billboard(v, "Door", Color3.fromRGB(80,255,200), "DoorESP")
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
    Text = "Generator ESP", 
    Callback = function(value)
if value then
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesGenerator" then
Billboard(v, "Mines Generator", Color3.fromRGB(80,255,200), "MinesESP1")
end
end
ESP2 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
 wait(1)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesGenerator" then
Billboard(v, "Mines Generator", Color3.fromRGB(80,255,200), "MinesESP1")
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
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "FuseObtain" then
Billboard(v, "Fuse", Color3.fromRGB(80,255,200), "MinesESP3")
end
end
ESP3 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
 wait(1)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "FuseObtain" then
Billboard(v, "Fuse", Color3.fromRGB(80,255,200), "MinesESP3")
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
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Toolbox" then
Billboard(v, "Box", Color3.fromRGB(80,255,200), "MinesESP2")
end
end
ESP4 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
  wait(1)                      
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Toolbox" then
Billboard(v, "Box", Color3.fromRGB(80,255,200), "MinesESP2")
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
    Text = "Anchor ESP", 
    Callback = function(value)
if value then
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "MineAnchor" then
Billboard(v, "Anchor", Color3.fromRGB(80,255,200), "MinesESP4")
end
end
ESP5 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
  wait(1)                      
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "MineAnchor" then
Billboard(v, "Anchor", Color3.fromRGB(80,255,200), "MinesESP4")
end
end
end)
else
ESP5:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesESP4" then
v:Destroy()
end
end
end 
end})
Group.Right3:AddToggle('',{
    Text = "Grumble ESP", 
    Callback = function(value)
if value then
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Grumbo" then
Billboard2(v, "Grumbo", Color3.fromRGB(80,255,200), "MinesESP6")
end
end
ESP6 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
  wait(1)                      
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Grumbo" then
Billboard2(v, "Grumbo", Color3.fromRGB(80,255,200), "MinesESP6")
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
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Locker_Large" then
Billboard(v, "Locker", Color3.fromRGB(80,255,200), "MinesESP7")
end
end
ESP7 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
  wait(1)                      
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Locker_Large" then
Billboard(v, "Locker", Color3.fromRGB(80,255,200), "MinesESP7")
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
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "RushMoving" then
Billboard2(v, "Rush", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "AmbushMoving" then
Billboard2(v, "Ambush", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "FigureRig" then
Billboard2(v, "Figure", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "GiggleCeiling" then
Billboard2(v, "", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "SeekNewClone" then
Billboard2(v, "Seek", Color3.fromRGB(255,0,0), "EntityESP")                       
end
end
ESP8 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
wait(1)                        
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "RushMoving" then
Billboard2(v, "Rush", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "AmbushMoving" then
Billboard2(v, "Ambush", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "FigureRig" then
Billboard2(v, "Figure", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "GiggleCeiling" then
Billboard2(v, "", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "SeekNewClone" then
Billboard2(v, "Seek", Color3.fromRGB(255,0,0), "EntityESP")                                                      
end
end
end)
else
ESP8:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "EntityESP" then
v:Destroy()
end
                end
end 
end})
