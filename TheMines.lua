local function Billboard(child, name, color, title)
    local Billboard = Instance.new("BillboardGui")
    Billboard.Active = true
    Billboard.AlwaysOnTop = true
    Billboard.ClipsDescendants = true
    Billboard.LightInfluence = 1
    Billboard.Size = UDim2.new(100, 0, 100, 0)
    Billboard.ResetOnSpawn = false
    Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Billboard.Parent = child
    Billboard.Name = title
    local Title = Instance.new("TextLabel")
    Title.Text = name
    Title.TextSize = 14
    Title.Font = "Oswald"
    Title.TextColor3 = color
    Title.BackgroundColor3 = Color3.new(1, 1, 1)
    Title.BackgroundTransparency = 1
    Title.BorderColor3 = Color3.new(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Visible = true
    Title.Parent = Billboard
    local uistroke = Instance.new("UIStroke")
    uistroke.Thickness = 1
    uistroke.Parent = Title
end
local function Highlight(child, name, color, title)
    Billboard(child, name, color, title)
    local Highlight = Instance.new("Highlight")
    Highlight.Parent = child
    Highlight.Adornee = child
    Highlight.FillTransparency = 0.5
    Highlight.OutlineTransparency = 0.5
    Highlight.Name = title
    Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Highlight.OutlineColor = Color3.new(1,1,1)
    Highlight.FillColor = color
end
local function Billboard2(child, name, color, title)
    local Billboard = Instance.new("BillboardGui")
    Billboard.Active = true
    Billboard.AlwaysOnTop = true
    Billboard.ClipsDescendants = true
    Billboard.LightInfluence = 1
    Billboard.Size = UDim2.new(100, 0, 100, 0)
    Billboard.ResetOnSpawn = false
    Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Billboard.Parent = child
    Billboard.Name = title
    local Title = Instance.new("TextLabel")
    Title.Text = name
    Title.TextSize = 14
    Title.Font = "Oswald"
    Title.TextColor3 = color
    Title.BackgroundColor3 = Color3.new(1, 1, 1)
    Title.BackgroundTransparency = 1
    Title.BorderColor3 = Color3.new(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Visible = true
    Title.Parent = Billboard
    local uistroke = Instance.new("UIStroke")
    uistroke.Thickness = 1
    uistroke.Parent = Title
end
local function Highlight2(child, name, color, title)
    Billboard(child, name, color, title)
    local Highlight = Instance.new("Highlight")
    Highlight.Parent = child
    Highlight.Adornee = child
    Highlight.FillTransparency = 0.5
    Highlight.OutlineTransparency = 0.5
    Highlight.Name = title
    Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Highlight.OutlineColor = Color3.new(1,1,1)
    Highlight.FillColor = color
    if child:IsA("Part") then
        child.Color = Color3.new(1,1,1)
        child.Transparency = 0
    end
end
local rep = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'
local lib =   loadstring(game:HttpGet(rep.. 'Library.lua'))()
local save =  loadstring(game:HttpGet(rep.. 'addons/SaveManager.lua'))()
local theme = loadstring(game:HttpGet(rep.. 'addons/ThemeManager.lua'))()

local Options = getgenv().Options

local Window = lib:CreateWindow({
    Title = 'Script Floor 2 Helper | v1.0',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0
})

local Tabs = {
  Cheat = Window:AddTab("Players"),
  Visual = Window:AddTab("Visual"),
  Configs = Window:AddTab("Other"),
  Main = Window:AddTab("Credits")
}
local Group = {
  Left1 = Tabs.Main:AddLeftGroupbox('GUI'),
  Right1 = Tabs.Main:AddRightGroupbox('Credits'),
  Left2 = Tabs.Cheat:AddLeftGroupbox('Players'),
  Left3 = Tabs.Visual:AddLeftGroupbox("Disabled"),
  Right2 = Tabs.Visual:AddRightGroupbox("Anti"),
  Left4 = Tabs.Visual:AddLeftGroupbox("Camera"),
  Right3 = Tabs.Visual:AddRightGroupbox("ESP")
}
Group.Left1:AddButton({
    Text = "Unload Library (Kill GUI)",
    DoubleClick = true,
    Func = function()
Library:Unload()
wait()
lib:Unload()
end})
Group.Right1:AddLabel("Credits by rechedmcvn")
Group.Left2:AddSlider('',{
    Text = "Speed Boost",
    Default = 1,
    Min = 1,
    Max = 6,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
    while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
            end
    end
})
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
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.MSHNL then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Chandelier") then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Chandelier:Destroy();end end end);end);game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.MSHNL then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Light_Fixtures") then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Light_Fixtures:Destroy();end end end);end)
Group.Left3:AddToggle("",{Text = "Disabled Light",Default = false,Tooltip = "No Light",Callback = function(NL)_G.MSHNL = NL ;end})  
Group.Right2:AddToggle("",{Text="Anti-Halt",Default=false,Tooltip="Anti Halt",Callback=function(v122)local v123=0;while true do if (v123==(1480 -(641 + 839))) then _G.BypassHalte=v122;if (_G.BypassHalte==true) then local v472=913 -(910 + 3) ;local v473;while true do if (v472==(0 -0)) then v473=game:GetService("ReplicatedStorage").ClientModules.EntityModules.Shade;v473.Parent=game.Workspace;break;end end elseif (_G.BypassHalte==false) then local v642=1684 -(1466 + 218) ;local v643;while true do if (v642==(0 + 0)) then v643=game.Workspace.Shade;v643.Parent=game:GetService("ReplicatedStorage").ClientModules.EntityModules;break;end end end break;end end end});
Group.Right2:AddToggle('',{
            Text = "Anti Figure",
            Callback = function(value)
_G.AntiFigure = value               
while _G.AntiFigure do wait(1.5)
 for _,v in pairs(workspace:GetDescendants()) do                   
if v.Name == "FigureRig" then
v.CanCollide = false
              end
           end
       end
   end})                    
Group.Right2:AddToggle('',{
            Text = "Anti Giggle",
            Callback = function(value)
_G.AntiGiggld = value               
while _G.AntiGiggle do wait(1.5)
 for _,v in pairs(workspace:GetDescendants()) do                   
if v.Name == "GiggleCelling" then
v.CanCollide = false
              end
           end
        end                
    end})
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.Eyhasd then if workspace:FindFirstChild("Eyes") then game:GetService("ReplicatedStorage").EntityInfo.MotorReplication:FireServer(0,(_G.Eyhasd and  -(452 -332)) or (0 -0) ,0,false);end end end);end);Group.Right2:AddToggle("",{Text="Anti Eyes",Default=false,Tooltip="Eyes No Damage",Callback=function(v133)_G.Eyhasd=v133;end});


Group.Left4:AddSlider('', {
    Text = 'FOV',
    Default = 70,
    Min = 70,
    Max = 120,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
        while wait() do
                workspace.CurrentCamera.FieldOfView = v
            end        
    end
})
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
Group.Right3:AddToggle('',{
    Text = "Doors ESP", 
    Callback = function(value)
if value then
 wait(1)               
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
 wait(1)                       
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
    Text = "Generator ESP", 
    Callback = function(value)
if value then
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesGenerator" then
Highlight(v, "Mines Generator", Color3.fromRGB(80,255,200), "MinesESP1")
end
end
ESP6 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
 wait(1)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesGenerator" then
Highlight(v, "Mines Generator", Color3.fromRGB(80,255,200), "MinesESP1")
end
end
end)
else
ESP6:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesESP1" then
v:Destroy()
end
end
end 
end})    
Group.Right3:AddToggle('',{
    Text = "Fuss ESP", 
    Callback = function(value)
if value then
 wait(1)               
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "FuseObtain" then
Highlight(v, "Fuse", Color3.fromRGB(80,255,200), "MinesESP3")
end
end
ESP6 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
 wait(1)                       
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "FuseObtain" then
Highlight(v, "Fuse", Color3.fromRGB(80,255,200), "MinesESP3")
end
end
end)
else
ESP6:Disconnect()
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
Highlight(v, "Box", Color3.fromRGB(80,255,200), "MinesESP2")
end
end
ESP7 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
  wait(1)                      
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "Toolbox" then
Highlight(v, "Box", Color3.fromRGB(80,255,200), "MinesESP2")
end
end
end)
else
ESP7:Disconnect()
for _, v in pairs(workspace:GetDescendants()) do
if v.Name == "MinesESP2" then
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
Highlight2(v, "Rush", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "AmbushMoving" then
Highlight2(v, "Ambush", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "FigureRig" then
Highlight2(v, "Figure", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "GiggleCeiling" then
Highlight2(v, "", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "SeekNewClone" then
Highlight2(v, "Seek", Color3.fromRGB(255,0,0), "EntityESP")                       
end
end
ESP8 = workspace.CurrentRooms.ChildAdded:Connect(function(child)
wait(1)                        
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "RushMoving" then
Highlight2(v, "Rush", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "AmbushMoving" then
Highlight2(v, "Ambush", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "FigureRig" then
Highlight2(v, "Figure", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "GiggleCeiling" then
Highlight2(v, "", Color3.fromRGB(255,0,0), "EntityESP")
elseif v.Name == "SeekNewClone" then
Highlight2(v, "Seek", Color3.fromRGB(255,0,0), "EntityESP")                                                      
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
