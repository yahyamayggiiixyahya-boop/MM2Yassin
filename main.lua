-- ============================================================
-- 🔥👑 سكربت ياسين الأسطوري (نسخة المشي المستقيم المخترق للحيطان بأمان) 👑🔥
-- ============================================================

local Players = game:GetService("Players")
local Workspace = game.Workspace
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LP = Players.LocalPlayer

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
end)

-- تنظيف النسخ القديمة
local PlayerGui = LP:WaitForChild("PlayerGui")
if PlayerGui:FindFirstChild("YaseenIntroGui") then PlayerGui.YaseenIntroGui:Destroy() end
if CoreGui:FindFirstChild("YaseenIntroGui") then CoreGui.YaseenIntroGui:Destroy() end
if PlayerGui:FindFirstChild("YaseenShooterHub") then PlayerGui.YaseenShooterHub:Destroy() end
if CoreGui:FindFirstChild("YaseenShooterHub") then CoreGui.YaseenShooterHub:Destroy() end

-- ============================================================
-- 🎬 الأنترو السينمائي الفخم (باسم ياسين حصرياً)
-- ============================================================
local IntroGui = Instance.new("ScreenGui", CoreGui)
IntroGui.Name = "YaseenIntroGui"
IntroGui.ResetOnSpawn = false
IntroGui.IgnoreGuiInset = true

local IntroBg = Instance.new("Frame", IntroGui)
IntroBg.Size = UDim2.new(1, 0, 1, 0)
IntroBg.BackgroundColor3 = Color3.fromRGB(10, 4, 20)
IntroBg.BorderSizePixel = 0

local IntroCard = Instance.new("Frame", IntroBg)
IntroCard.Size = UDim2.new(0, 320, 0, 140)
IntroCard.Position = UDim2.new(0.5, -160, 0.45, -70)
IntroCard.BackgroundColor3 = Color3.fromRGB(20, 10, 35)
IntroCard.BackgroundTransparency = 1
Instance.new("UICorner", IntroCard).CornerRadius = UDim.new(0, 14)

local CardStroke = Instance.new("UIStroke", IntroCard)
CardStroke.Thickness = 3
CardStroke.Color = Color3.fromRGB(0, 225, 255)
CardStroke.Transparency = 1

local IntroTitle = Instance.new("TextLabel", IntroCard)
IntroTitle.Size = UDim2.new(1, 0, 0, 50)
IntroTitle.Position = UDim2.new(0, 0, 0.15, 0)
IntroTitle.BackgroundTransparency = 1
IntroTitle.TextColor3 = Color3.fromRGB(0, 255, 255)
IntroTitle.TextSize = 26
IntroTitle.Font = Enum.Font.FredokaOne
IntroTitle.Text = "⚡ ياسين ⚡"
IntroTitle.TextTransparency = 1

local IntroSub = Instance.new("TextLabel", IntroCard)
IntroSub.Size = UDim2.new(1, 0, 0, 35)
IntroSub.Position = UDim2.new(0, 0, 0.55, 0)
IntroSub.BackgroundTransparency = 1
IntroSub.TextColor3 = Color3.fromRGB(200, 150, 255)
IntroSub.TextSize = 14
IntroSub.Font = Enum.Font.GothamBold
IntroSub.Text = "جارِ تحميل السكربت الآمن..."
IntroSub.TextTransparency = 1

-- القائمة الرئيسية
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "YaseenShooterHub"
ScreenGui.ResetOnSpawn = false

local ToggleBtn = Instance.new("TextButton", ScreenGui)
ToggleBtn.Size = UDim2.new(0, 45, 0, 45)
ToggleBtn.Position = UDim2.new(0.01, 0, 0.12, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(15, 8, 30)
ToggleBtn.TextColor3 = Color3.fromRGB(0, 255, 255)
ToggleBtn.TextSize = 18
ToggleBtn.Font = Enum.Font.FredokaOne
ToggleBtn.Text = "👑"
ToggleBtn.Visible = false
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(1, 0)
local ToggleStroke = Instance.new("UIStroke", ToggleBtn)
ToggleStroke.Thickness = 2.5
ToggleStroke.Color = Color3.fromRGB(147, 51, 234)

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 240, 0, 410)
MainFrame.Position = UDim2.new(0.07, 0, 0.12, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 5, 25)
MainFrame.BackgroundTransparency = 0.05
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Thickness = 3
MainStroke.Color = Color3.fromRGB(0, 240, 255)

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 255)
Title.TextSize = 13
Title.Font = Enum.Font.GothamBold
Title.Text = "⚡ YASEEN HUB ⚡"

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- تشغيل الأنترو
task.spawn(function()
    TweenService:Create(IntroCard, TweenInfo.new(1), {BackgroundTransparency = 0.1}):Play()
    TweenService:Create(CardStroke, TweenInfo.new(1), {Transparency = 0}):Play()
    TweenService:Create(IntroTitle, TweenInfo.new(1), {TextTransparency = 0}):Play()
    TweenService:Create(IntroSub, TweenInfo.new(1), {TextTransparency = 0}):Play()
    
    task.wait(2.5)
    
    TweenService:Create(IntroCard, TweenInfo.new(0.8), {BackgroundTransparency = 1}):Play()
    TweenService:Create(CardStroke, TweenInfo.new(0.8), {Transparency = 1}):Play()
    TweenService:Create(IntroTitle, TweenInfo.new(0.8), {TextTransparency = 1}):Play()
    TweenService:Create(IntroSub, TweenInfo.new(0.8), {TextTransparency = 1}):Play()
    TweenService:Create(IntroBg, TweenInfo.new(0.8), {BackgroundTransparency = 1}):Play()
    
    task.wait(0.8)
    IntroGui:Destroy()
    
    ToggleBtn.Visible = true
    MainFrame.Visible = true
end)

local function CreateMiniButton(name, posY)
    local btn = Instance.new("TextButton", MainFrame)
    btn.Size = UDim2.new(0.9, 0, 0, 30)
    btn.Position = UDim2.new(0.05, 0, posY, 0)
    btn.BackgroundColor3 = Color3.fromRGB(28, 12, 52)
    btn.TextColor3 = Color3.fromRGB(210, 245, 255)
    btn.TextSize = 10
    btn.Font = Enum.Font.GothamBold
    btn.Text = name
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    
    local stroke = Instance.new("UIStroke", btn)
    stroke.Thickness = 1.5
    stroke.Color = Color3.fromRGB(0, 220, 255)
    return btn
end

-- الأزرار
local ESPBtn = CreateMiniButton("👁️ رادار الأدوار والمسدس", 0.09)
local DoubleJumpBtn = CreateMiniButton("🦘 انفينتي جمب (نطاتي): [مغلق]", 0.16)
local WalkCoinsBtn = TestWalkCoinsBtn or CreateMiniButton("💰 جمع العملات بالمشي المستقيم: [مغلق]", 0.23)
local AutoKillKnifeBtn = CreateMiniButton("🔪 قتل تلقائي بـ رمية السكينة: [مغلق]", 0.30)
local HalloweenLobbyBtn = CreateMiniButton("🎃 زينة هالوين اللوبي: [مغلق]", 0.37)
local ShooterUIBtn = CreateMiniButton("🔫 زر شوتر (قتل المجرم): [مغلق]", 0.44)
local GunTPBtn = CreateMiniButton("🔫 أخذ المسدس فوراً", 0.51)
local ResetBtn = CreateMiniButton("🔄 ريسبون (إصلاح العليق)", 0.58)
local SkyBtn = CreateMiniButton("🔴 القمر الأحمر والنجوم: [مغلق]", 0.65)

local StatusLabel = Instance.new("TextLabel", MainFrame)
StatusLabel.Size = UDim2.new(0.9, 0, 0, 65)
StatusLabel.Position = UDim2.new(0.05, 0, 0.74, 0)
StatusLabel.BackgroundColor3 = Color3.fromRGB(15, 6, 30)
StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
StatusLabel.TextSize = 9
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "الحالة: جاهز يا ياسين! جمع العملات بالمشي المستقيم المخترق للحيطان مفعل. 👑⚡"
StatusLabel.TextWrapped = true
Instance.new("UICorner", StatusLabel).CornerRadius = UDim.new(0, 6)

-- ============================================================
-- 1. رادار الأدوار
-- ============================================================
local espEnabled = false
ESPBtn.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    if espEnabled then
        ESPBtn.Text = "👁️ رادار الأدوار: [شغال ✅]"
        StatusLabel.Text = "تم تفعيل رادار الأدوار ومراقبة المسدس."
    else
        ESPBtn.Text = "👁️ رادار الأدوار والمسدس"
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
                    txt.TextSize = 11
                    txt.Font = Enum.Font.GothamBold
                end
                
                local txt = head.YaseenMasterESP:FindFirstChild("RoleTxt")
                if txt then
                    txt.Text = p.Name .. "\n" .. role
                    txt.TextColor3 = color
                end
            end
        end
        
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "GunDrop" or obj.Name == "DroppedGun" or (obj:IsA("BasePart") and obj.Name:lower().find("gun")) then
                if not obj:FindFirstChild("YaseenGunESP") then
                    local bb = Instance.new("BillboardGui", obj)
                    bb.Name = "YaseenGunESP"
                    bb.Size = UDim2.new(0, 120, 0, 40)
                    bb.StudsOffset = Vector3.new(0, 2, 0)
                    bb.AlwaysOnTop = true
                    
                    local txt = Instance.new("TextLabel", bb)
                    txt.Size = UDim2.new(1, 0, 1, 0)
                    txt.BackgroundTransparency = 1
                    txt.TextColor3 = Color3.fromRGB(255, 255, 0)
                    txt.TextSize = 12
                    txt.Font = Enum.Font.FredokaOne
                    txt.Text = "🔫 [مكان المسدس]"
                end
            end
        end
    end)
end)

-- ============================================================
-- 2. انفينتي جمب
-- ============================================================
local infinityJumpActive = false
local ijConn

DoubleJumpBtn.MouseButton1Click:Connect(function()
    infinityJumpActive = not infinityJumpActive
    if infinityJumpActive then
        DoubleJumpBtn.Text = "🦘 انفينتي جمب: [شغال ✅]"
        StatusLabel.Text = "تم تفعيل القفز اللانهائي!"
        
        ijConn = UserInputService.JumpRequest:Connect(function()
            pcall(function()
                local char = LP.Character
                local humanoid = char and char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
        end)
    else
        DoubleJumpBtn.Text = "🦘 انفينتي جمب (نطاتي): [مغلق]"
        StatusLabel.Text = "تم إيقاف القفز اللانهائي."
        if ijConn then ijConn:Disconnect() end
    end
end)

-- ============================================================
-- 3. جمع العملات بالمشي المستقيم المخترق للحيطان (آمن وبدون تيليبرت)
-- ============================================================
local walkCoinsActive = false

WalkCoinsBtn.MouseButton1Click:Connect(function()
    walkCoinsActive = not walkCoinsActive
    if walkCoinsActive then
        WalkCoinsBtn.Text = "💰 جمع العملات المستقيم: [شغال ✅]"
        StatusLabel.Text = "جاري المشي المستقيم واختراق الحيطان لجمع كل العملات..."
        
        task.spawn(function()
            while walkCoinsActive do
                pcall(function()
                    local char = LP.Character
                    local humanoid = char and char:FindFirstChildOfClass("Humanoid")
                    local root = char and char:FindFirstChild("HumanoidRootPart")
                    if not humanoid or not root then return end
                    
                    -- إلغاء اصطدام الشخصية بالحيطان عشان تمشي في خط مستقيم تام
                    for _, part in ipairs(char:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                    
                    -- البحث عن أقرب عملة
                    local targetPart = nil
                    local shortestDist = math.huge
                    
                    for _, obj in ipairs(Workspace:GetDescendants()) do
                        if not walkCoinsActive then break end
                        if obj.Name == "CoinContainer" or obj.Name:lower():find("coin") or obj.Name == "CoinVisual" then
                            for _, coin in ipairs(obj:GetChildren()) do
                                local cPart = coin
                                if coin:IsA("Model") and coin.PrimaryPart then
                                    cPart = coin.PrimaryPart
                                elseif coin:IsA("Model") then
                                    cPart = coin:FindFirstChildWhichIsA("BasePart")
                                end
                                
                                if cPart and cPart:IsA("BasePart") then
                                    local dist = (root.Position - cPart.Position).Magnitude
                                    if dist < shortestDist then
                                        shortestDist = dist
                                        targetPart = cPart
                                    end
                                end
                            end
                        end
                    end
                    
                    -- لو فيه عملة، روح لها في خط مستقيم تام وبسرعة عالية
                    if targetPart then
                        humanoid.WalkSpeed = 30 -- سرعة ممتازة ومنتظمة
                        humanoid:MoveTo(targetPart.Position)
                        
                        -- تحديث مباشر للاتجاه عشان يكون مستقيم 100%
                        local moveDir = (targetPart.Position - root.Position)
                        if moveDir.Magnitude > 2 then
                            root.CFrame = CFrame.new(root.Position, Vector3.new(targetPart.Position.X, root.Position.Y, targetPart.Position.Z))
                        end
                    else
                        task.wait(0.5)
                    end
                end)
                task.wait(0.1)
            end
        end)
    else
        WalkCoinsBtn.Text = "💰 جمع العملات بالمشي المستقيم: [مغلق]"
        StatusLabel.Text = "تم إيقاف جمع العملات المستقيم."
        pcall(function()
            local char = LP.Character
            local humanoid = char and char:FindFirstChildOfClass("Humanoid")
            if humanoid then 
                humanoid.WalkSpeed = 16 
                humanoid:MoveTo(LP.Character.HumanoidRootPart.Position) 
            end
            if char then
                for _, part in ipairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end)
    end
end)

-- ============================================================
-- 4. قتل تلقائي برمي السكينة
-- ============================================================
local autoKillKnifeActive = false
AutoKillKnifeBtn.MouseButton1Click:Connect(function()
    autoKillKnifeActive = not autoKillKnifeActive
    if autoKillKnifeActive then
        AutoKillKnifeBtn.Text = "🔪 قتل تلقائي بالسكينة: [شغال ✅]"
        StatusLabel.Text = "تفعيل رمي السكينة القاتل فوراً!"
        
        task.spawn(function()
            while autoKillKnifeActive do
                pcall(function()
                    local myChar = LP.Character
                    if myChar and (myChar:FindFirstChild("Knife") or LP.Backpack:FindFirstChild("Knife")) then
                        for _, p in ipairs(Players:GetPlayers()) do
                            if p ~= LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                                local enemyRoot = p.Character.HumanoidRootPart
                                for _, remote in ipairs(Workspace:GetDescendants()) do
                                    if remote:IsA("RemoteEvent") and (remote.Name:lower():find("knife") or remote.Name:lower():find("throw") or remote.Name:lower():find("slash")) then
                                        pcall(function()
                                            remote:FireServer(enemyRoot.Position)
                                        end)
                                    end
                                end
                            end
                        end
                    end
                end)
                task.wait(0.2)
            end
        end)
    else
        AutoKillKnifeBtn.Text = "🔪 قتل تلقائي بـ رمية السكينة: [مغلق]"
        StatusLabel.Text = "تم إيقاف قتل السكينة التلقائي."
    end
end)

-- ============================================================
-- 5. زينة هالوين اللوبي
-- ============================================================
local halloweenActive = false
local halloweenFolder = nil

HalloweenLobbyBtn.MouseButton1Click:Connect(function()
    halloweenActive = not halloweenActive
    pcall(function()
        if halloweenActive then
            HalloweenLobbyBtn.Text = "🎃 زينة هالوين اللوبي: [شغال ✅]"
            StatusLabel.Text = "تم تفعيل أجواء وقرع عسل الهالوين في الاستراحة!"
            
            halloweenFolder = Instance.new("Folder", Workspace)
            halloweenFolder.Name = "YaseenHalloweenLobby"
            
            math.randomseed(tick())
            for i = 1, 15 do
                local pumpkin = Instance.new("Part", halloweenFolder)
                pumpkin.Name = "HalloweenPumpkin"
                pumpkin.Size = Vector3.new(6, 6, 6)
                pumpkin.Shape = Enum.PartType.Ball
                pumpkin.Material = Enum.Material.Neon
                pumpkin.Color = Color3.fromRGB(255, 100, 0)
                pumpkin.Anchored = true
                pumpkin.CanCollide = false
                pumpkin.Position = Vector3.new(math.random(-80, 80), 5, math.random(-80, 80))
                
                local pLight = Instance.new("PointLight", pumpkin)
                pLight.Color = Color3.fromRGB(255, 120, 0)
                pLight.Range = 300
                pLight.Brightness = 10
            end
        else
            HalloweenLobbyBtn.Text = "🎃 زينة هالوين اللوبي: [مغلق]"
            StatusLabel.Text = "تم إزالة زينة الهالوين."
            if halloweenFolder then halloweenFolder:Destroy(); halloweenFolder = nil end
        end
    end)
end)

-- ============================================================
-- 6. زر شوتر (قتل المجرم بدقة)
-- ============================================================
local shooterEnabled = false
local shooterButton = nil

ShooterUIBtn.MouseButton1Click:Connect(function()
    shooterEnabled = not shooterEnabled
    if shooterEnabled then
        ShooterUIBtn.Text = "🔫 زر شوتر: [شغال ✅]"
        StatusLabel.Text = "تم إظهار زر شوتر على الشاشة!"
        
        if not ScreenGui:FindFirstChild("YaseenShooterBtn") then
            shooterButton = Instance.new("TextButton", ScreenGui)
            shooterButton.Name = "YaseenShooterBtn"
            shooterButton.Size = UDim2.new(0, 85, 0, 85)
            shooterButton.Position = UDim2.new(0.8, 0, 0.7, 0)
            shooterButton.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
            shooterButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            shooterButton.TextSize = 14
            shooterButton.Font = Enum.Font.FredokaOne
            shooterButton.Text = "🔥 شوتر\n(اقتل المجرم)"
            shooterButton.Active = true
            shooterButton.Draggable = true
            Instance.new("UICorner", shooterButton).CornerRadius = UDim.new(1, 0)
            
            local btnStroke = Instance.new("UIStroke", shooterButton)
            btnStroke.Thickness = 2.5
            btnStroke.Color = Color3.fromRGB(0, 255, 255)
            
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
                        local myChar = LP.Character
                        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
                        if not myRoot then return end
                        
                        local gun = myChar:FindFirstChild("Gun") or LP.Backpack:FindFirstChild("Gun") or myChar:FindFirstChild("Revolver") or LP.Backpack:FindFirstChild("Revolver")
                        
                        if gun then
                            if gun.Parent == LP.Backpack then gun.Parent = myChar end
                            local oldPos = myRoot.CFrame
                            myRoot.CFrame = enemyRoot.CFrame + Vector3.new(0, 3, 0)
                            task.wait(0.05)
                            
                            if gun:IsA("Tool") then
                                gun:Activate()
                                for _, remote in ipairs(Workspace:GetDescendants()) do
                                    if remote:IsA("RemoteEvent") and (remote.Name:lower():find("shoot") or remote.Name:lower():find("gun") or remote.Name:lower():find("fire")) then
                                        pcall(function() remote:FireServer(enemyRoot.Position) end)
                                    end
                                end
                            end
                            
                            task.wait(0.05)
                            myRoot.CFrame = oldPos
                            StatusLabel.Text = "🎯 تم القضاء على المجرم!"
                        else
                            StatusLabel.Text = "⚠️ معاكش سلاح الشريف!"
                        end
                    else
                        StatusLabel.Text = "⚠️ لم يتم العثور على المجرم."
                    end
                end)
            end)
        else
            ScreenGui.YaseenShooterBtn.Visible = true
        end
    else
        ShooterUIBtn.Text = "🔫 زر شوتر (قتل المجرم): [مغلق]"
        StatusLabel.Text = "تم إخفاء زر شوتر."
        if ScreenGui:FindFirstChild("YaseenShooterBtn") then
            ScreenGui.YaseenShooterBtn.Visible = false
        end
    end
end)

-- ============================================================
-- 7. أخذ المسدس فوراً
-- ============================================================
GunTPBtn.MouseButton1Click:Connect(function()
    pcall(function()
        local myRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
        if not myRoot then return end
        
        local oldPos = myRoot.CFrame
        local gunDrop = nil
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "GunDrop" or obj.Name == "DroppedGun" or (obj:IsA("BasePart") and obj.Name:lower().find("gun")) then
                gunDrop = obj
                break
            end
        end
        
        if gunDrop then
            myRoot.CFrame = gunDrop.CFrame + Vector3.new(0, 1, 0)
            task.wait(0.15)
            myRoot.CFrame = oldPos
            StatusLabel.Text = "🔫 تم أخذ المسدس بنجاح!"
        else
            StatusLabel.Text = "⚠️ المسدس مش موجود على الأرض."
        end
    end)
end)

-- ============================================================
-- 8. زر الريسبون
-- ============================================================
ResetBtn.MouseButton1Click:Connect(function()
    pcall(function()
        walkCoinsActive = false
        WalkCoinsBtn.Text = "💰 جمع العملات بالمشي المستقيم: [مغلق]"
        if LP.Character and LP.Character:FindFirstChildOfClass("Humanoid") then
            LP.Character:FindFirstChildOfClass("Humanoid").Health = 0
            StatusLabel.Text = "🔄 تم عمل ريسبون بنجاح!"
        end
    end)
end)

-- ============================================================
-- 9. القمر الأحمر العالي بالسماء + نجوم براقة
-- ============================================================
local redSkyActive = false
local redBall = nil
local starsFolder = nil

SkyBtn.MouseButton1Click:Connect(function()
    redSkyActive = not redSkyActive
    pcall(function()
        if redSkyActive then
            SkyBtn.Text = "🔴 القمر الأحمر والنجوم: [شغال ✅]"
            Lighting.ClockTime = 0
            Lighting.Brightness = 1.2
            Lighting.Ambient = Color3.fromRGB(100, 10, 10)
            Lighting.OutdoorAmbient = Color3.fromRGB(80, 0, 0)
            
            redBall = Instance.new("Part", Workspace)
            redBall.Name = "YaseenRedMoon"
            redBall.Shape = Enum.PartType.Ball
            redBall.Size = Vector3.new(420, 420, 420)
            redBall.Position = Vector3.new(0, 5000, 0)
            redBall.Anchored = true
            redBall.CanCollide = false
            redBall.Material = Enum.Material.Neon
            redBall.Color = Color3.fromRGB(255, 0, 0)
            
            local light = Instance.new("PointLight", redBall)
            light.Color = Color3.fromRGB(255, 0, 0)
            light.Range = 9000
            light.Brightness = 25
            
            starsFolder = Instance.new("Folder", Workspace)
            starsFolder.Name = "YaseenBrightStars"
            math.randomseed(tick())
            for i = 1, 60 do
                local star = Instance.new("Part", starsFolder)
                star.Size = Vector3.new(15, 15, 15)
                star.Shape = Enum.PartType.Ball
                star.Material = Enum.Material.Neon
                star.Color = Color3.fromRGB(255, 255, 255)
                star.Anchored = true
                star.CanCollide = false
                local rx = math.random(-2500, 2500)
                local rz = math.random(-2500, 2500)
                star.Position = Vector3.new(rx, 4500, rz)
                
                local sLight = Instance.new("PointLight", star)
                sLight.Color = Color3.fromRGB(200, 230, 255)
                sLight.Range = 400
                sLight.Brightness = 5
            end
            
            StatusLabel.Text = "🔴 تم تفعيل القمر الأحمر والنجوم اللامعة بنجاح!"
        else
            SkyBtn.Text = "🔴 القمر الأحمر والنجوم: [مغلق]"
            if redBall then redBall:Destroy(); redBall = nil end
            if starsFolder then starsFolder:Destroy(); starsFolder = nil end
            Lighting.ClockTime = 14
            Lighting.Brightness = 2
            Lighting.Ambient = Color3.fromRGB(128, 128, 128)
            Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
            StatusLabel.Text = "🔴 رجعت السماء للوضع العادي."
        end
    end)
end)
