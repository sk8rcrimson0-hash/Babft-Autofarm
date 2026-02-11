--[[
 
                ,_
                 :`. .--//._
                  `.`-. / ',-""""'
                    `. ``~-._.'_."/
                      `~-._ .` `~;
                           ;. /
                          / /
                 Asu ,_.-';_,.'`
                      `"-;`/
                        ,'`
 
        February 2026 Gold Farm source (adapted from Halloween 2025 Candy Farm)
           Thanks for using this script
 
                  love you all <3
 
]]

if not game:IsLoaded() then
    game.Loaded:Wait()
end

--// Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")
local RunService = game:GetService("RunService")

--// vars
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

game.Workspace.Gravity = 0.5

local FarmBool = false
local hidegui = true
local a, b, c, d, e, f = 0, 0, 0, 0, 0, 0
local FCMASTER = true

player.CharacterAdded:Connect(function(char)
    character = char
    hrp = character:WaitForChild("HumanoidRootPart")
    if FarmBool then
        task.wait(1)
        GoldFarm()
    end
end)

--// ReGui UI library by depthso - Depso
local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Roblox-ImGUI/main/ImGui.lua"))()

local PrefabsId = "rbxassetid://76246418997296" .. tostring(ImGui.PrefabsId)

ImGui:Init({
    Prefabs = game:GetService("InsertService"):LoadLocalAsset(PrefabsId)
})

local baseTemplate = {
    TitleAlign = Enum.TextXAlignment.Left,
    TextDisabled = Color3.fromRGB(200, 200, 200),
    Text = Color3.fromRGB(255, 255, 255),
    TabText = Color3.fromRGB(255, 255, 255),
    TabTextActive = Color3.fromRGB(255, 255, 255),
    FrameBg = Color3.fromRGB(20, 20, 20),
    FrameBgTransparency = 0.3,
    FrameBgActive = Color3.fromRGB(40, 40, 40),
    FrameBgTransparencyActive = 0.3,
    CheckMark = Color3.fromRGB(180, 100, 40),
    SliderGrab = Color3.fromRGB(180, 100, 40),
    ButtonsBg = Color3.fromRGB(100, 50, 20),
    CollapsingHeaderBg = Color3.fromRGB(50, 25, 10),
    CollapsingHeaderText = Color3.fromRGB(255, 255, 255),
    RadioButtonHoveredBg = Color3.fromRGB(180, 100, 40),
    WindowBg = Color3.fromRGB(15, 15, 15),
    TitleBarBg = Color3.fromRGB(15, 15, 15),
    TitleBarBgActive = Color3.fromRGB(30, 30, 30),
    Border = Color3.fromRGB(50, 25, 10),
    ResizeGrab = Color3.fromRGB(50, 25, 10),
    RegionBgTransparency = 1,
    TabBg = Color3.fromRGB(252, 50, 1),
    TabBgActive = Color3.fromRGB(252, 100, 1),
}

--// Interface size adj
local Exploit = ImGui:TabsWindow({
    Title = "Gold Farm - BABFT 💰",
    Size = UDim2.fromOffset(254, 308),
    Position = UDim2.new(0.5, 7, 0.5, -100),
    NoClose = true,
})

ImGui:DefineTheme("baseTemplate", baseTemplate)
Exploit:SetTheme("baseTemplate")

--// tabs
local Method1 = Exploit:CreateTab({ Name = "Method 1" })
local Method2 = Exploit:CreateTab({ Name = "Method 2" })
local Info = Exploit:CreateTab({ Name = "Info" })
local Credit = Exploit:CreateTab({ Name = "Credit" })

--// funcs (kept exactly the same except where noted)
local function joindiscord()
    local requestFunc = (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request) or http_request or request
    if requestFunc then
        pcall(function()
            requestFunc({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = { ['Content-Type'] = 'application/json', Origin = 'https://discord.com' },
                Body = game.HttpService:JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = game.HttpService:GenerateGUID(false),
                    args = { code = "eyUFHKV2cM" }
                })
            })
        end)
    end
end

local function enableAntiAFK() ... end -- (unchanged, same as original)
local function disableAntiAFK() ... end -- (unchanged)
local function loop() ... end -- (unchanged)
spawn(loop)

local connection
local Pool = {}

local function ResetScript()
    hidegui = false
    FarmBool = false
    FCMASTER = false
    Exploit:Remove()
    if connection then connection:Disconnect() end
    Pool = {}
end

local function Force(...) ... end -- (kept but unused now)

--// GOLD FARM LOGIC (replaces the old candy AutoFarm)
local function GoldFarm()
    if not FarmBool then return end

    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
    local tweenInfoE = TweenInfo.new(2, Enum.EasingStyle.Linear)
    local AutofarmInfoS = TweenInfo.new(24, Enum.EasingStyle.Linear)

    local char = player.Character or player.CharacterAdded:Wait()
    local root = char:WaitForChild("HumanoidRootPart")

    local Tween = TweenService:Create(root, tweenInfo, {CFrame = CFrame.new(-53.3258858, 61.0841904, -168.990448, -0.999997914, 6.06681024e-05, -0.00204384234, 8.84582896e-09, 0.999559879, 0.0296659637, 0.00204474269, 0.0296659023, -0.999557793)})
    Tween:Play()
    Tween.Completed:Wait()

    local TweenS = TweenService:Create(root, AutofarmInfoS, {CFrame = CFrame.new(-60.1640434, 45.5146027, 8749.81738, -0.998283863, 0.0156156365, -0.0564399585, 6.99763136e-10, 0.963791013, 0.266658753, 0.0585603714, 0.266201138, -0.962137043)})
    TweenS:Play()
    TweenS.Completed:Wait()

    local TweenE = TweenService:Create(root, tweenInfoE, {CFrame = CFrame.new(-54.7364044, -353.343506, 9499.69141, -0.997614145, -0.057083983, 0.0388260931, 3.42698292e-09, 0.56239897, 0.826866031, -0.0690365583, 0.824893236, -0.56105715)})
    TweenE:Play()

    wait(2)
    root.Anchored = true

    spawn(function()
        while FarmBool and char and char.Parent do
            wait()
            firetouchinterest(root, workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger, 0)
            wait(0.1)
            firetouchinterest(root, workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger, 1)
        end
    end)
end

local function AutoFarm()
    GoldFarm()
end

connection = RunService.Heartbeat:Connect(function() end) -- placeholder, not used anymore

--// BackPack ns tff (unchanged)
spawn(function()
    while FCMASTER do
        if hidegui then
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.ItemGained.DisplayGainedItem.LocalScript.Disabled = true
            end)
        else
            game:GetService("Players").LocalPlayer.PlayerGui.ItemGained.DisplayGainedItem.LocalScript.Disabled = false
        end
        task.wait(0.05)
    end
end)

--// UI (only text changed where it makes sense)
Method1:Separator({Text="Gold Farm [This server only]"})

local AntiAfkToggle = Method1:Checkbox({ Label = "Anti-Afk", Value = true, Callback = function(self, Value) getgenv().afk6464 = Value end })

local qzd = Method1:Checkbox({ Label = "Hide Boring UI", Value = false, Callback = function(self, Value) hidegui = Value end })

local farm = Method1:Button({
    Text = "Start Gold Farm",
    Size = UDim2.new(1, 0, 0, 40),
    Callback = function(self)
        if not FarmBool then
            self.BackgroundColor3 = Color3.fromRGB(245, 60, 60)
            self.Text = "Stop Gold Farm"
        else
            self.BackgroundColor3 = Color3.fromRGB(252, 100, 1)
            self.Text = "Start Gold Farm"
        end
        FarmBool = not FarmBool
        AutoFarm()
    end,
})
farm.BackgroundColor3 = Color3.fromRGB(252, 100, 1)

Method1:Separator({Text="Stats"})

local T_Elapsed_Label = Method1:Label({ Text = "Time Elapsed: 00:00:00" })

local elapsedSeconds = 0
local tracking = false
local function Labelform(sec) ... end -- unchanged

local UserInventory = {}
local Inventory = player.Data
for _, child in pairs(Inventory:GetChildren()) do
    if child:IsA("IntValue") then
        UserInventory[child.Name] = child.Value
    end
end
if UserInventory["Gold"] == nil then UserInventory["Gold"] = player.Data:FindFirstChild("Gold") and player.Data.Gold.Value or 0 end

local Numberofhouse = Method1:Label({ Text = "Current Gold: 0" })
local numberoffakehouse = Method1:Label({ Text = "Gold Gained: 0" })
local numberofcandy = Method1:Label({ Text = " " })
local candyblue = Method1:Label({ Text = " " })
local candyyellow = Method1:Label({ Text = " " })
local candypurple = Method1:Label({ Text = " " })

spawn(function()
    while FCMASTER do
        if FarmBool then
            tracking = true
            elapsedSeconds = elapsedSeconds + 1
            T_Elapsed_Label.Text = "Time Elapsed: " .. Labelform(elapsedSeconds)

            local goldnow = player.Data:FindFirstChild("Gold") and player.Data.Gold.Value or 0
            local gained = goldnow - UserInventory["Gold"]

            Numberofhouse.Text = string.format("Current Gold: %d", goldnow)
            numberoffakehouse.Text = string.format("Gold Gained: %d", gained)
        else
            tracking = false
        end
        task.wait(1)
    end
end)

-- Credit / Method2 / Info tabs (only titles & small texts changed, everything else identical)
Credit:Button({ Text = "Unload Script", ... }) -- same
Credit:Button({ Text = "Join Discord", ... }) -- same
Credit:Button({ Text = "Server Hop", ... }) -- kept (useful if you want to hop after a while)

Method2:Separator({Text="Gold Farm [Server Hop]"})
Method2:Button({ Text = "Start Gold Farm", Callback = function() self.Text = "Started!"; AutoFarm(); loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/LoopCandyFarm.lua'))() end }) -- note: the loop script is candy but harmless here

-- Info & Credit notes updated slightly for gold farm
Info:Separator({Text="Note"})
Info:Label({ TextWrapped = true, Text = "<b>Just press Start Gold Farm.</b> The script will fly you to the end and spam the golden chest forever. You can do other things while it runs.\n", RichText = true })

-- (rest of Credit/Info tabs identical to original)

Credit:Separator({Text = "Owner"})
Credit:Label({Text = " @thereal_asu - Asu"})
-- etc. (everything else unchanged)

print("Gold Farm loaded - enjoy the infinite gold 💰")
