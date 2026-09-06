-- ============================================================
-- 👑🔥 سكربت ياسين الأسطوري المطور (مشية الدجال + قمر أحمر + منيو فخمة) 🔥👑
-- ============================================================

local Players = game:GetService("Players")
local Workspace = game.Workspace
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local LP = Players.LocalPlayer

-- ============================================================
-- 🛡️ دالة التحقق من الإحداثيات لتجنب كود 267 والكراشات
-- ============================================================
local function isValidPosition(pos)
    if typeof(pos) ~= "Vector3" then return false end
    if pos.X ~= pos.X or pos.Y ~= pos.Y or pos.Z ~= pos.Z then return false end
    if math.abs(pos.X) == math.huge or math.abs(pos.Y) == math.huge or math.abs(pos.Z) == math.huge then return false end
    return true
end

-- ============================================================
-- 🛡️ حماياتك الخاصة (Anti_Kick V1 & V2)
-- ============================================================
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yahyamayggiiixyahya-boop/Anti_KickV2/refs/heads/main/main.lua"))()
    end)
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yahyamayggiiixyahya-boop/Anti_KickV1/refs/heads/main/main.lua"))()
    end)
    
    pcall(function()
        local mt = getrawmetatable(game)
        setreadonly(mt, false)
        local oldNamecall = mt.__namecall
        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            if (method == "Kick" or method == "kick" or method:lower():find("ban")) and self == LP then
                return nil
            end
            return oldNamecall(self, ...)
        end)
        setreadonly(mt, true)
    end)
end)

-- تنظيف النسخ القديمة
local PlayerGui = LP:WaitForChild("PlayerGui")
if PlayerGui:FindFirstChild("YaseenIntroGui") then PlayerGui.YaseenIntroGui:Destroy() end
if CoreGui:FindFirstChild("YaseenIntroGui") then CoreGui.YaseenIntroGui:Destroy() end
if PlayerGui:FindFirstChild("YaseenShooterHub") then PlayerGui.YaseenShooterHub:Destroy() end
if CoreGui:FindFirstChild("YaseenShooterHub") then CoreGui.YaseenShooterHub:Destroy() end

-- ============================================================
-- 🎬 تصميم الأنترو الاحترافي (ياسين فرصة الشاي + الشيكولاته)
-- ============================================================
local IntroGui = Instance.new("ScreenGui", CoreGui)
IntroGui.Name = "YaseenIntroGui"
IntroGui.ResetOnSpawn = false
IntroGui.IgnoreGuiInset = true

local IntroBg = Instance.new("Frame", IntroGui)
IntroBg.Size = UDim2.new(1, 0, 1, 0)
IntroBg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IntroBg.BorderSizePixel = 0

local TeaText = Instance.new("TextLabel", IntroBg)
TeaText.Size = UDim2.new(1, 0, 0, 80)
TeaText.Position = UDim2.new(0, 0, 0.4, 0)
TeaText.BackgroundTransparency = 1
TeaText.TextColor3 = Color3.fromRGB(255, 215, 0)
TeaText.TextSize = 28
TeaText.Font = Enum.Font.FredokaOne
TeaText.Text = "☕ ياسين فرصة الشاي ☕"
TeaText.TextTransparency = 1

local ChocolateBar = Instance.new("Frame", IntroGui)
ChocolateBar.Size = UDim2.new(0, 260, 0, 110)
ChocolateBar.Position = UDim2.new(0.5, -130, 0.55, 0)
ChocolateBar.BackgroundColor3 = Color3.fromRGB(25, 12, 5)
ChocolateBar.BackgroundTransparency = 1
Instance.new("UICorner", ChocolateBar).CornerRadius = UDim.new(0, 12)

local ChocoStroke = Instance.new("UIStroke", ChocolateBar)
ChocoStroke.Thickness = 3
ChocoStroke.Color = Color3.fromRGB(10, 5, 2)
ChocoStroke.Transparency = 1

local ChocoText = Instance.new("TextLabel", ChocolateBar)
ChocoText.Size = UDim2.new(1, 0, 1, 0)
ChocoText.BackgroundTransparency = 1
ChocoText.TextColor3 = Color3.fromRGB(15, 15, 15)
ChocoText.TextSize = 24
ChocoText.Font = Enum.Font.FredokaOne
ChocoText.Text = "ياسين"
ChocoText.TextTransparency = 1

task.spawn(function()
    TweenService:Create(TeaText, TweenInfo.new(1.5), {TextTransparency = 0}):Play()
    task.wait(2.2)
    TweenService:Create(TeaText, TweenInfo.new(1.5), {TextTransparency = 1}):Play()
    task.wait(1.5)
    
    TweenService:Create(ChocolateBar, TweenInfo.new(1.5), {BackgroundTransparency = 0}):Play()
    TweenService:Create(ChocoStroke, TweenInfo.new(1.5), {Transparency = 0}):Play()
    TweenService:Create(ChocoText, TweenInfo.new(1.5), {TextTransparency = 0}):Play()
    
    local moveTween = TweenService:Create(ChocolateBar, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, true), {Position = UDim2.new(0.5, -130, 0.52, 0)})
    moveTween:Play()
    task.wait(3.5)
    
    TweenService:Create(ChocolateBar, TweenInfo.new(1.5), {BackgroundTransparency = 1}):Play()
    TweenService:Create(ChocoStroke, TweenInfo.new(1.5), {Transparency = 1}):Play()
    TweenService:Create(ChocoText, TweenInfo.new(1.5), {TextTransparency = 1}):Play()
    TweenService:Create(IntroBg, TweenInfo.new(1.5), {BackgroundTransparency = 1}):Play()
    task.wait(1.5)
    IntroGui:Destroy()
end)

-- ============================================================
-- 🎮 القائمة الرئيسية الاحترافية (Modern UI)
-- ============================================================
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "YaseenShooterHub"
ScreenGui.ResetOnSpawn = false

local ToggleBtn = Instance.new("TextButton", ScreenGui)
ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleBtn.Position = UDim2.new(0.01, 0, 0.12, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(20, 10, 35)
ToggleBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
ToggleBtn.TextSize = 20
ToggleBtn.Font = Enum.Font.FredokaOne
ToggleBtn.Text = "👑"
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(1, 0)
local ToggleStroke = Instance.new("UIStroke", ToggleBtn)
ToggleStroke.Thickness = 2.5
ToggleStroke.Color = Color3.fromRGB(255, 0, 128)

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 260, 0, 440)
MainFrame.Position = UDim2.new(0.07, 0, 0.12, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 6, 22)
MainFrame.BackgroundTransparency = 0.05
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 14)

local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Thickness = 3
MainStroke.Color = Color3.fromRGB(180, 0, 255)

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 13
Title.Font = Enum.Font.GothamBold
Title.Text = "⚡ YASEEN PRO HUB ⚡"

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

local function CreateMiniButton(name, posY)
    local btn = Instance.new("TextButton", MainFrame)
    btn.Size = UDim2.new(0.9, 0, 0, 32)
    btn.Position = UDim2.new(0.05, 0, posY, 0)
    btn.BackgroundColor3 = Color3.fromRGB(30, 15, 55)
    btn.TextColor3 = Color3.fromRGB(240, 220, 255)
    btn.TextSize = 11
    btn.Font = Enum.Font.GothamBold
    btn.Text = name
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
    
    local stroke = Instance.new("UIStroke", btn)
    stroke.Thickness = 1.2
    stroke.Color = Color3.fromRGB(120, 60, 200)
    return btn
end

local ESPBtn = CreateMiniButton("👁️ رادار الأدوار (مجرم/شريف)", 0.09)
local GunTrackerBtn = CreateMiniButton("🎯 تتبع مكان المسدس", 0.16)
local SmoothCoinsBtn = CreateMiniButton("💰 جمع الكوينات بهدوء وذكاء: [مغلق]", 0.23)
local ShooterUIBtn = CreateMiniButton("🔫 إظهار زر شوتر (قتل المجرم): [مغلق]", 0.30)
local GunTPBtn = CreateMiniButton("🔫 تيليبورت سريع للمسدس", 0.37)
local ResetBtn = CreateMiniButton("🔄 زر الريسبون (إصلاح العليق)", 0.44)
local TouchFlyBtn = CreateMiniButton("🚀 طيران اللمس: [مغلق]", 0.51)
local SkyBtn = CreateMiniButton("🔴 القمر الأحمر والكرة المرعبة: [مغلق]", 0.58)
local WalkAnimBtn = CreateMiniButton("🧟‍♂️ تفعيل مشية الدجال المرعبة", 0.65)

local StatusLabel = Instance.new("TextLabel", MainFrame)
StatusLabel.Size = UDim2.new(0.9, 0, 0, 75)
StatusLabel.Position = UDim2.new(0.05, 0, 0.73, 0)
StatusLabel.BackgroundColor3 = Color3.fromRGB(18, 8, 35)
StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
StatusLabel.TextSize = 10
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "الحالة: المنيو جاهزة يا ياسين.. جرب مشية الدجال الآن! ☕⚡"
StatusLabel.TextWrapped = true
Instance.new("UICorner", StatusLabel).CornerRadius = UDim.new(0, 8)

-- ============================================================
-- 1. رادار الأدوار (ESP)
-- ============================================================
local espEnabled = false
ESPBtn.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    if espEnabled then
        ESPBtn.Text = "👁️ رادار الأدوار: [شغال ✅]"
        StatusLabel.Text = "تم تفعيل رادار الأدوار."
    else
        ESPBtn.Text = "👁️ رادار الأدوار (مجرم/شريف)"
        StatusLabel.Text = "تم إيقاف الرادار."
    end
end)

RunService.RenderStepped:Connect(function()
    if not espEnabled then return end
    pcall(function()
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LP and p.Character and p.Character:FindFirstChild("Head") then
                local char = p.Character
                local role = "👤 عادي"
                local color = Color3.fromRGB(255, 255, 255)
                
                if p.Backpack:FindFirstChild("Knife") or char:FindFirstChild("Knife") then
                    role = "🔪 [المجرم]"
                    color = Color3.fromRGB(255, 40, 40)
                elseif p.Backpack:FindFirstChild("Gun") or char:FindFirstChild("Gun") or p.Backpack:FindFirstChild("Revolver") then
                    role = "🔫 [الشريف]"
                    color = Color3.fromRGB(40, 150, 255)
                end
                
                local head = char.Head
                if not head:FindFirstChild("YaseenMasterESP") then
                    local bb = Instance.new("BillboardGui", head)
                    bb.Name = "YaseenMasterESP"
                    bb.Size = UDim2.new(0, 130, 0, 40)
                    bb.StudsOffset = Vector3.new(0, 2.3, 0)
                    bb.AlwaysOnTop = true
                    
                    local txt = Instance.new("TextLabel", bb)
                    txt.Name = "RoleTxt"
                    txt.Size = UDim2.new(1, 0, 1, 0)
                    txt.BackgroundTransparency = 1
                    txt.TextSize = 12
                    txt.Font = Enum.Font.GothamBold
                end
                
                local txt = head.YaseenMasterESP:FindFirstChild("RoleTxt")
                if txt then
                    txt.Text = p.Name .. "\n" .. role
                    txt.TextColor3 = color
                end
            end
        end
    end)
end)

-- ============================================================
-- 2. تتبع مكان المسدس
-- ============================================================
local gunTrackerActive = false
GunTrackerBtn.MouseButton1Click:Connect(function()
    gunTrackerActive = not gunTrackerActive
    if gunTrackerActive then
        GunTrackerBtn.Text = "🎯 تتبع المسدس: [شغال ✅]"
        StatusLabel.Text = "تتبع المسدس مفعل."
    else
        GunTrackerBtn.Text = "🎯 تتبع مكان المسدس"
        StatusLabel.Text = "تم إيقاف تتبع المسدس."
    end
end)

RunService.RenderStepped:Connect(function()
    if not gunTrackerActive then return end
    pcall(function()
        local gunDrop = nil
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "GunDrop" or obj.Name == "DroppedGun" or (obj:IsA("BasePart") and obj.Name:lower():find("gun")) then
                gunDrop = obj
                break
            end
        end
        
        if gunDrop then
            if not gunDrop:FindFirstChild("YaseenGunGui") then
                local bb = Instance.new("BillboardGui", gunDrop)
                bb.Name = "YaseenGunGui"
                bb.Size = UDim2.new(0, 150, 0, 45)
                bb.StudsOffset = Vector3.new(0, 1.5, 0)
                bb.AlwaysOnTop = true
                
                local txt = Instance.new("TextLabel", bb)
                txt.Size = UDim2.new(1, 0, 1, 0)
                txt.BackgroundTransparency = 1
                txt.TextColor3 = Color3.fromRGB(255, 215, 0)
                txt.TextSize = 13
                txt.Font = Enum.Font.GothamBold
                txt.Text = "🔫 [مكان المسدس هنا!]"
            end
        else
            for _, obj in ipairs(Workspace:GetDescendants()) do
                if obj:FindFirstChild("YaseenGunGui") then
                    obj.YaseenGunGui:Destroy()
                end
            end
        end
    end)
end)

-- ============================================================
-- 3. جمع الكوينات بذكاء وهدوء (مع فحص isValidPosition لمنع كود 267)
-- ============================================================
local smoothCoinsActive = false
SmoothCoinsBtn.MouseButton1Click:Connect(function()
    smoothCoinsActive = not smoothCoinsActive
    if smoothCoinsActive then
        SmoothCoinsBtn.Text = "💰 جمع الكوينات بذكاء: [شغال ✅]"
        StatusLabel.Text = "جاري تجميع الكوينات ببطء وحذر مع نظام الحماية من الكراش..."
        
        task.spawn(function()
            local noclipConn = RunService.Stepped:Connect(function()
                pcall(function()
                    if LP.Character then
                        for _, part in ipairs(LP.Character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end
                end)
            end)
            
            while smoothCoinsActive do
                pcall(function()
                    local char = LP.Character
                    local root = char and char:FindFirstChild("HumanoidRootPart")
                    if not root or not isValidPosition(root.Position) then return end
                    
                    for _, obj in ipairs(Workspace:GetDescendants()) do
                        if not smoothCoinsActive then break end
                        if obj.Name == "CoinContainer" or obj.Name:lower():find("coin") then
                            for _, coin in ipairs(obj:GetChildren()) do
                                if not smoothCoinsActive then break end
                                if coin:IsA("BasePart") and isValidPosition(coin.Position) and root then
                                    while coin and coin.Parent and (root.Position - coin.Position).Magnitude > 2 and smoothCoinsActive do
                                        local charNow = LP.Character
                                        local rootNow = charNow and charNow:FindFirstChild("HumanoidRootPart")
                                        if not rootNow or not isValidPosition(rootNow.Position) then break end
                                        
                                        local dir = (coin.Position - rootNow.Position).Unit
                                        if isValidPosition(Vector3.new(dir.X, dir.Y, dir.Z)) then
                                            rootNow.Velocity = dir * 50
                                        end
                                        RunService.Heartbeat:Wait()
                                    end
                                    task.wait(0.12)
                                end
                            end
                        end
                    end
                end)
                task.wait(0.3)
            end
            
            if noclipConn then noclipConn:Disconnect() end
            if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
                LP.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            end
        end)
    else
        SmoothCoinsBtn.Text = "💰 جمع الكوينات بهدوء وذكاء: [مغلق]"
        StatusLabel.Text = "تم إيقاف جمع الكوينات."
    end
end)

-- ============================================================
-- 4. إيمبوت زر شوتر (قتل المجرم بدقة)
-- ============================================================
local shooterEnabled = false
local shooterButton = nil

ShooterUIBtn.MouseButton1Click:Connect(function()
    shooterEnabled = not shooterEnabled
    if shooterEnabled then
        ShooterUIBtn.Text = "🔫 زر شوتر (قتل المجرم): [شغال ✅]"
        StatusLabel.Text = "تم إظهار زر شوتر على الشاشة، اضغط عليه لقتل المجرم فوراً!"
        
        if not ScreenGui:FindFirstChild("YaseenShooterBtn") then
            shooterButton = Instance.new("TextButton", ScreenGui)
            shooterButton.Name = "YaseenShooterBtn"
            shooterButton.Size = UDim2.new(0, 90, 0, 90)
            shooterButton.Position = UDim2.new(0.8, 0, 0.7, 0)
            shooterButton.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
            shooterButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            shooterButton.TextSize = 15
            shooterButton.Font = Enum.Font.FredokaOne
            shooterButton.Text = "🔥 شوتر\n(اقتل المجرم)"
            shooterButton.Active = true
            shooterButton.Draggable = true
            Instance.new("UICorner", shooterButton).CornerRadius = UDim.new(1, 0)
            
            local btnStroke = Instance.new("UIStroke", shooterButton)
            btnStroke.Thickness = 3
            btnStroke.Color = Color3.fromRGB(255, 255, 0)
            
            shooterButton.MouseButton1Click:Connect(function()
                pcall(function()
                    local targetPlayer = nil
                    for _, p in ipairs(Players:GetPlayers()) do
                        if p ~= LP and p.Character then
                            if p.Backpack:FindFirstChild("Knife") or p.Character:FindFirstChild("Knife") then
                                targetPlayer = p
                                break
                            end
                        end
                    end
                    
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local enemyRoot = targetPlayer.Character.HumanoidRootPart
                        if not isValidPosition(enemyRoot.Position) then return end
                        
                        local myChar = LP.Character
                        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
                        if not myRoot or not isValidPosition(myRoot.Position) then return end
                        
                        local gun = myChar:FindFirstChild("Gun") or LP.Backpack:FindFirstChild("Gun") or myChar:FindFirstChild("Revolver") or LP.Backpack:FindFirstChild("Revolver")
                        
                        if gun then
                            if gun.Parent == LP.Backpack then gun.Parent = myChar end
                            
                            local oldPos = myRoot.CFrame
                            myRoot.CFrame = enemyRoot.CFrame + Vector3.new(0, 3, 0)
                            task.wait(0.05)
                            
                            if gun:IsA("Tool") then
                                gun:Activate()
                                for _, remote in ipairs(Workspace:GetDescendants()) do
                                    if remote:IsA("RemoteEvent") and (remote.Name:lower():find("shoot") or remote.Name:lower():find("gun") or remote.Name:lower():find("fire") or remote.Name:lower():find("knife")) then
                                        pcall(function() remote:FireServer(enemyRoot.Position) end)
                                    end
                                end
                            end
                            
                            task.wait(0.05)
                            myRoot.CFrame = oldPos
                            StatusLabel.Text = "🎯 تم القضاء على المجرم بنجاح يا ياسين!"
                        else
                            StatusLabel.Text = "⚠️ لازم يكون معاك سلاح الشريف في إيدك!"
                        end
                    else
                        StatusLabel.Text = "⚠️ لم يتم العثور على المجرم بعد."
                    end
                end)
            end)
        else
            ScreenGui.YaseenShooterBtn.Visible = true
        end
    else
        ShooterUIBtn.Text = "🔫 إظهار زر شوتر (قتل المجرم): [مغلق]"
        StatusLabel.Text = "تم إخفاء زر شوتر."
        if ScreenGui:FindFirstChild("YaseenShooterBtn") then
            ScreenGui.YaseenShooterBtn.Visible = false
        end
    end
end)

-- ============================================================
-- 5. تيليبورت سريع للمسدس
-- ============================================================
GunTPBtn.MouseButton1Click:Connect(function()
    pcall(function()
        local myRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
        if not myRoot or not isValidPosition(myRoot.Position) then return end
        
        local oldPos = myRoot.CFrame
        local gunDrop = nil
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "GunDrop" or obj.Name == "DroppedGun" or (obj:IsA("BasePart") and obj.Name:lower():find("gun")) then
                gunDrop = obj
                break
            end
        end
        
        if gunDrop and isValidPosition(gunDrop.Position) then
            myRoot.CFrame = gunDrop.CFrame + Vector3.new(0, 1, 0)
            task.wait(0.15)
            myRoot.CFrame = oldPos
            StatusLabel.Text = "🔫 تم أخذ المسدس والرجوع فوراً!"
        else
            StatusLabel.Text = "⚠️ المسدس غير موجود على الأرض."
        end
    end)
end)

-- ============================================================
-- 6. زر الريسبون
-- ============================================================
ResetBtn.MouseButton1Click:Connect(function()
    pcall(function()
        smoothCoinsActive = false
        SmoothCoinsBtn.Text = "💰 جمع الكوينات بهدوء وذكاء: [مغلق]"
        if LP.Character and LP.Character:FindFirstChildOfClass("Humanoid") then
            LP.Character:FindFirstChildOfClass("Humanoid").Health = 0
            StatusLabel.Text = "🔄 تم عمل ريسبون بنجاح!"
        end
    end)
end)

-- ============================================================
-- 7. طيران اللمس
-- ============================================================
local touchFlyEnabled = false
local flingConn = nil
TouchFlyBtn.MouseButton1Click:Connect(function()
    touchFlyEnabled = not touchFlyEnabled
    if touchFlyEnabled then
        TouchFlyBtn.Text = "🚀 طيران اللمس: [شغال ✅]"
        StatusLabel.Text = "اقترب من أي لاعب سيطير فوراً!"
        pcall(function()
            local char = LP.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if root then
                flingConn = RunService.Heartbeat:Connect(function()
                    for _, p in ipairs(Players:GetPlayers()) do
                        if p ~= LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                            local enemyRoot = p.Character.HumanoidRootPart
                            if (root.Position - enemyRoot.Position).Magnitude < 4 then
                                enemyRoot.Velocity = Vector3.new(99999, 99999, 99999)
                                enemyRoot.AssemblyAngularVelocity = Vector3.new(99999, 99999, 99999)
                            end
                        end
                    end
                end)
            end
        end)
    else
        TouchFlyBtn.Text = "🚀 طيران اللمس: [مغلق]"
        StatusLabel.Text = "تم إيقاف طيران اللمس."
        if flingConn then flingConn:Disconnect(); flingConn = nil end
    end
end)

-- ============================================================
-- 8. القمر الأحمر والكرة الحمراء المرعبة في السماء
-- ============================================================
local redSkyActive = false
local redBall = nil

SkyBtn.MouseButton1Click:Connect(function()
    redSkyActive = not redSkyActive
    pcall(function()
        if redSkyActive then
            Lighting.ClockTime = 0
            Lighting.Brightness = 0.8
            Lighting.Ambient = Color3.fromRGB(70, 10, 10)
            Lighting.OutdoorAmbient = Color3.fromRGB(50, 0, 0)
            
            redBall = Instance.new("Part", Workspace)
            redBall.Name = "YaseenRedMoon"
            redBall.Shape = Enum.PartType.Ball
            redBall.Size = Vector3.new(350, 350, 350)
            redBall.Position = Vector3.new(0, 700, 0)
            redBall.Anchored = true
            redBall.CanCollide = false
            redBall.Material = Enum.Material.Neon
            redBall.Color = Color3.fromRGB(255, 0, 0)
            
            local light = Instance.new("PointLight", redBall)
            light.Color = Color3.fromRGB(255, 0, 0)
            light.Range = 1000
            light.Brightness = 10
            
            StatusLabel.Text = "🔴 تم تفعيل القمر الأحمر والكرة المرعبة في السماء!"
        else
            if redBall then redBall:Destroy(); redBall = nil end
            Lighting.ClockTime = 14
            Lighting.Brightness = 2
            Lighting.Ambient = Color3.fromRGB(128, 128, 128)
            Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
            StatusLabel.Text = "🔴 رجعت السماء للوضع العادي."
        end
    end)
end)

-- ============================================================
-- 9. نظام مشية الدجال الاحترافية
-- ============================================================
local degalAnimActive = false
local currentTrack = nil

WalkAnimBtn.MouseButton1Click:Connect(function()
    degalAnimActive = not degalAnimActive
    pcall(function()
        local character = LP.Character or LP.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local animator = humanoid:WaitForChild("Animator")
        
        if degalAnimActive then
            local animationId = "rbxassetid://507771019" -- مشية الدجال
            local animationInstance = Instance.new("Animation")
            animationInstance.AnimationId = animationId
            
            if currentTrack then currentTrack:Stop() end
            currentTrack = animator:LoadAnimation(animationInstance)
            currentTrack:Play()
            
            WalkAnimBtn.Text = "🧟‍♂️ مشية الدجال: [شغالة ✅]"
            StatusLabel.Text = "تم تفعيل مشية الدجال المرعبة بنجاح!"
        else
            if currentTrack then
                currentTrack:Stop()
                currentTrack = nil
            end
            WalkAnimBtn.Text = "🧟‍♂️ تفعيل مشية الدجال المرعبة"
            StatusLabel.Text = "تم إيقاف مشية الدجال."
        end
    end)
end)
