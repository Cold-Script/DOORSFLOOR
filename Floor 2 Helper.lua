if _G.executor then
print("lol")
end
_G.executor = true
version = 1.0

local rep = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'
local lib =   loadstring(game:HttpGet(rep.. 'Library.lua'))()
local save =  loadstring(game:HttpGet(rep.. 'addons/SaveManager.lua'))()
local theme = loadstring(game:HttpGet(rep.. 'addons/ThemeManager.lua'))()

local Options = getgenv().Options

local Window = lib:CreateWindow({
    Title = 'Script Floor 2 Helper | v' .. version,
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0
})
_wait = task.wait
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
_wait()
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
    Callback = function(Speed)
    game.Players.LocalPlayer.Character.Humanoid:SetAttribute('SpeedBoostBehind', Speed)    
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
while _G.AntiFigure do wait()
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
while _G.AntiGiggle do wait()
 for _,v in pairs(workspace:GetDescendants()) do                   
if v.Name == "GiggleCelling" then
v.CanCollide = false
              end
           end
        end                
    end})
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.Eyhasd then if workspace:FindFirstChild("Eyes") then game:GetService("ReplicatedStorage").EntityInfo.MotorReplication:FireServer(0,(_G.Eyhasd and  -(452 -332)) or (0 -0) ,0,false);end end end);end);Group.Right2:AddToggle("",{Text="Anti Eyes",Default=false,Tooltip="Eyes No Damage",Callback=function(v133)_G.Eyhasd=v133;end});
Group.Left4:AddToggle('', {
    Text = 'Enabled FOV',
    Default = false,
    Tooltip = 'changes fov',
    Callback = function(v)
        flags.fov = v
    end
})

Group.Left4:AddSlider('', {
    Text = 'FOV',
    Default = 120,
    Min = 70,
    Max = 120,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
        values.fieldOfView = v
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
task.spawn(function()
        if flags.fov then
            workspace.CurrentCamera.FieldOfView = values.fieldOfView
        else
            workspace.CurrentCamera.FieldOfView = 70
        end
    end)

    
