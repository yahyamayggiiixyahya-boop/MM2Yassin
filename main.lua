-- ============================================================
-- 👑🔥 سكريبت ياسين الخارق لـ MM2 (حماية Anti_Kick V1 & V2 المدمجة) 🔥👑
-- ============================================================

local Players = game:GetService("Players")
local Workspace = game.Workspace
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local LP = Players.LocalPlayer

-- ============================================================
-- 🛡️ دمج أقوى نظام Anti_Kick الخاص بك (V1 & V2) مع الحماية الداخلية
-- ============================================================
task.spawn(function()
    -- تشغيل Anti_Kick V2 الخاص بك
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yahyamayggiiixyahya-boop/Anti_KickV2/refs/heads/main/main.lua"))()
        print("🛡️ [ياسين] تم تفعيل Anti_Kick V2 بنجاح!")
    end)
    
    -- تشغيل Anti_Kick V1 الخاص بك
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yahyamayggiiixyahya-boop/Anti_KickV1/refs/heads/main/main.lua"))()
        print("🛡️ [ياسين] تم تفعيل Anti_Kick V1 بنجاح!")
    end)
    
    -- حماية إضافية للريموست والـ Metatable
    pcall(function()
        local mt = getrawmetatable(game)
        setreadonly(mt, false)
        local oldNamecall = mt.__namecall
        
        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            if (method == "Kick" or method == "kick" or method:lower():find("ban")) and self == LP then
                warn("🛡️ [حماية ياسين القصوى] تم صد محاولة الكيك بنجاح تام!")
                return nil
            end
            return oldNamecall(self, ...)
        end)
        setreadonly(mt, true)
    end)
end)

-- تنظيف النسخ القديمة لعدم التعليق
local PlayerGui = LP:WaitForChild("PlayerGui")
if PlayerGui:FindFirstChild("YaseenUltimateHub") then
    PlayerGui.YaseenUltimateHub:Destroy()
end
if CoreGui:FindFirstChild("YaseenUltimateHub") then
    CoreGui.YaseenUltimateHub:Destroy()
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "YaseenUltimateHub"
ScreenGui.ResetOnSpawn = false

-- زر فتح وإغلاق القائمة
local ToggleBtn = Instance.new("TextButton", ScreenGui)
ToggleBtn.Size = UDim2.new(0, 45, 0, 45)
ToggleBtn.Position = UDim2.new(0.01, 0, 0.12, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(15, 5, 30)
ToggleBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
ToggleBtn.TextSize = 16
ToggleBtn.Font = Enum.Font.FredokaOne
ToggleBtn.Text = "👑"
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(1, 0)
local ToggleStroke = Instance.new("UIStroke", ToggleBtn)
ToggleStroke.Thickness = 2
ToggleStroke.Color = Color3.fromRGB(255, 0, 120)

-- القائمة الرئيسية
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 240, 0, 380)
MainFrame.Position = UDim2.new(0.06, 0, 0.12, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 4, 20)
MainFrame.BackgroundTransparency = 0.1
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Thickness = 2.5
MainStroke.Color = Color3.fromRGB(160, 40, 255)

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 12
Title.Font = Enum.Font.GothamBold
Title.Text = "⚡ YASEEN ULTIMATE HUB ⚡"

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

local function CreateMiniButton(name, posY)
    local btn = Instance.new("TextButton", MainFrame)
    btn.Size = UDim2.new(0.88, 0, 0, 32)
    btn.Position = UDim2.new(0.06, 0, posY, 0)
    btn.BackgroundColor3 = Color3.fromRGB(25, 12, 45)
    btn.TextColor3 = Color3.fromRGB(240, 220, 255)
    btn.TextSize = 11
    btn.Font = Enum.Font.GothamBold
    btn.Text = name
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
    
    local stroke = Instance.new("UIStroke", btn)
    stroke.Thickness = 1
    stroke.Color = Color3.fromRGB(100, 50, 180)
    return btn
end

-- الأزرار داخل القائمة
local ESPBtn = CreateMiniButton("👁️ رادار الأدوار (مجرم/شريف)", 0.10)
local GunTrackerBtn = CreateMiniButton("🎯 تتبع مكان المسدس", 0.19)
local StealthCoinsBtn = CreateMiniButton("💰 جمع الكوينات (آمن تماماً): [مغلق]", 0.28)
local GunTPBtn = CreateMiniButton("🔫 تيليبورت سريع للمسدس", 0.37)
local ResetBtn = CreateMiniButton("🔄 زر الريسبون (إصلاح العليق)", 0.46)
local TouchFlyBtn = CreateMiniButton("🚀 طيران اللمس: [مغلق]", 0.55)
local SkyBtn = CreateMiniButton("🌌 تغيير لون السماء السحري", 0.64)

local StatusLabel = Instance.new("TextLabel", MainFrame)
StatusLabel.Size = UDim2.new(0.88, 0, 0, 65)
StatusLabel.Position = UDim2.new(0.06, 0, 0.74, 0)
StatusLabel.BackgroundColor3 = Color3.fromRGB(15, 6, 30)
StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
StatusLabel.TextSize = 10
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "الحالة: تم دمج حمايتك V1 و V2 بنجاح.. انطلق يا ياسين! 🛡️🚀"
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
-- 3. جمع الكوينات (آمن تماماً وبدون كيك بمساعدة حمايتك)
-- ============================================================
local stealthCoinsActive = false
StealthCoinsBtn.MouseButton1Click:Connect(function()
    stealthCoinsActive = not stealthCoinsActive
    if stealthCoinsActive then
        StealthCoinsBtn.Text = "💰 جمع الكوينات (آمن): [شغال ✅]"
        StatusLabel.Text = "جاري تجميع الكوينات بأمان تام..."
        
        task.spawn(function()
            while stealthCoinsActive do
                pcall(function()
                    local char = LP.Character
                    local root = char and char:FindFirstChild("HumanoidRootPart")
                    if not root then return end
                    
                    for _, obj in ipairs(Workspace:GetDescendants()) do
                        if not stealthCoinsActive then break end
                        if obj.Name == "CoinContainer" or obj.Name:lower():find("coin") then
                            for _, coin in ipairs(obj:GetChildren()) do
                                if not stealthCoinsActive then break end
                                if coin:IsA("BasePart") and root then
                                    root.CFrame = CFrame.new(coin.Position + Vector3.new(0, 0.3, 0))
                                    task.wait(0.15)
                                end
                            end
                        end
                    end
                end)
                task.wait(0.5)
            end
        end)
    else
        StealthCoinsBtn.Text = "💰 جمع الكوينات (آمن تماماً): [مغلق]"
        StatusLabel.Text = "تم إيقاف تجميع الكوينات."
    end
end)

-- ============================================================
-- 4. تيليبورت سريع للمسدس
-- ============================================================
GunTPBtn.MouseButton1Click:Connect(function()
    pcall(function()
        local myRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
        if not myRoot then return end
        
        local oldPos = myRoot.CFrame
        local gunDrop = nil
        
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "GunDrop" or obj.Name == "DroppedGun" or (obj:IsA("BasePart") and obj.Name:lower():find("gun")) then
                gunDrop = obj
                break
            end
        end
        
        if gunDrop then
            myRoot.CFrame = gunDrop.CFrame + Vector3.new(0, 1, 0)
            task.wait(0.15)
            myRoot.CFrame = oldPos
            StatusLabel.Text = "🔫 تم أخذ المسدس والرجوع فوراً!"
        else
            StatusLabel.Text = "⚠️ المسدس ليس موجوداً على الأرض."
        end
    end)
end)

-- ============================================================
-- 5. زر الريسبون (لإصلاح أي تعليق)
-- ============================================================
ResetBtn.MouseButton1Click:Connect(function()
    pcall(function()
        stealthCoinsActive = false
        StealthCoinsBtn.Text = "💰 جمع الكوينات (آمن تماماً): [مغلق]"
        
        if LP.Character and LP.Character:FindFirstChildOfClass("Humanoid") then
            LP.Character:FindFirstChildOfClass("Humanoid").Health = 0
            StatusLabel.Text = "🔄 تم عمل ريسبون بنجاح!"
        end
    end)
end)

-- ============================================================
-- 6. طيران اللمس (Touch Fling)
-- ============================================================
local touchFlyEnabled = false
local flingConn = nil

TouchFlyBtn.MouseButton1Click:Connect(function()
    touchFlyEnabled = not touchFlyEnabled
    if touchFlyEnabled then
        TouchFlyBtn.Text = "🚀 طيران اللمس: [شغال ✅]"
        StatusLabel.Text = "اقترب من أي لاعب ولمسه سيطير فوراً!"
        
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
        if flingConn then
            flingConn:Disconnect()
            flingConn = nil
        end
    end
end)

-- ============================================================
-- 7. تغيير لون السماء
-- ============================================================
local skyActive = false
SkyBtn.MouseButton1Click:Connect(function()
    skyActive = not skyActive
    pcall(function()
        if skyActive then
            Lighting.ClockTime = 0
            Lighting.Brightness = 1.2
            Lighting.Ambient = Color3.fromRGB(30, 15, 60)
            
            local sky = Instance.new("Sky")
            sky.Name = "YaseenSky"
            sky.SkyboxBk = "rbxassetid://12064107"
            sky.SkyboxDn = "rbxassetid://12064151"
            sky.SkyboxFt = "rbxassetid://12064121"
            sky.SkyboxLf = "rbxassetid://12064131"
            sky.SkyboxRt = "rbxassetid://12064144"
            sky.SkyboxUp = "rbxassetid://12064162"
            sky.Parent = Lighting
            StatusLabel.Text = "🌌 تم تفعيل سماء الليل الفخمة!"
        else
            for _, s in ipairs(Lighting:GetChildren()) do
                if s.Name == "YaseenSky" then s:Destroy() end
            end
            Lighting.ClockTime = 14
            Lighting.Brightness = 2
            Lighting.Ambient = Color3.fromRGB(128, 128, 128)
            StatusLabel.StatusLabel = "🌌 رجعت السماء للوضع العادي."
        end
    end)
end)
