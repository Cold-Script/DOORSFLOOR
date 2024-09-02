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
  Main = Window:AddTab("Main"),
  Cheat = Window:AddTab("Players"),
  Visual = Window:AddTab("Visual"),
  Configs = Window:AddTab("Other")
}
local Group = {
  Left1 = Tabs.Main:AddLeftGroupbox('GUI'),
  Right1 = Tabs.Main:AddRightGroupbox('Create'),
}
Tabs.Main:AddButton({
    Text = "Unload Library (Kill GUI)",
    DoubleClick = true,
    Func = function()
Library:Unload()
_wait()
lib:Unload()
end})















PlayerTab = PlayerTab:AddLeftGroupbox("ESP")
PlayerTab:AddToggle("",{Text="Doors ESP",Callback=function(V1)
if V1 then
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
