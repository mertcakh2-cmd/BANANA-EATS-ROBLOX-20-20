--[[
    🍌 BANANA EATS HUB v4 - RAYFIELD 🍌
    Multi-Language (English / Türkçe / Русский)
    Game: Banana Eats (4448566543)
]]

-- Load Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")
local Workspace = game:GetService("Workspace")
local Teams = game:GetService("Teams")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

-- ==================== LANGUAGE SYSTEM ====================
local Lang = {
    English = {
        Win = "🍌 Banana Eats Hub",
        LoadT = "Banana Eats Hub", LoadSub = "by HackerAI",
        TabM = "⚡ Main", TabV = "👁️ Visuals", TabX = "🔧 Misc", TabA = "📜 About",
        Fly = "Fly Mode", FlyD = "WASD + Space/Shift to fly", FlyS = "Fly Speed",
        Noclip = "Noclip", NoclipD = "Walk through walls",
        Speed = "Speed Boost", SpeedD = "Super speed", SpeedV = "Speed Value",
        ARun = "Auto Run", ARunD = "Run from banana", 
        AEsc = "Auto Escape", AEscD = "TP to exit doors",
        ACol = "Auto Collect", AColD = "Collect coins/items fast",
        ESPb = "ESP Banana", ESPbD = "Only banana red",
        ESPp = "ESP Survivors", ESPpD = "Other players green",
        ESPe = "ESP Exits", ESPeD = "Exit doors highlight",
        ESPc = "ESP Color", ESPcD = "Pick color",
        AFK = "Anti AFK", AFKD = "No kick",
        WS = "Walk Speed", JP = "Jump Power",
        Full = "Fullbright", FullD = "Max brightness",
        Code = "Auto Claim Code", CodeD = "Claim daily code",
        Lang = "Language",
        EN = "🇬🇧 English", TR = "🇹🇷 Türkçe", RU = "🇷🇺 Русский",
        NotiLoad = "Script loaded! Press K for GUI",
        SG = "🎮 GAMEPLAY", SM = "🏃 MOVEMENT", SE = "👁️ ESP", SC = "🧍 CHARACTER", SP = "🛡️ PROTECTION",
        AboutT = "🍌 Banana Eats Hub v4",
        AboutC = "Hello! This is a Banana Eats script.\nThank you for using this script!\n\n=== FEATURES ===\n🍌 Auto Run from Banana\n🚀 Fly + Noclip + Speed\n👁️ ESP: Banana / Survivors / Exits\n💰 Auto Collect Coins & Items\n🔦 Fullbright | 🔑 Auto Code\n🛡️ Anti AFK\n\nMade with Rayfield UI\nv4.0 - Fully Fixed",
        SG2 = "⚡ EXTRA",
        AutoTrap = "Auto Remove Trap", TrapD = "Remove banana traps near exits",
        WalkspeedH = "Fast Walkspeed", WalkspeedHD = "Set 40 speed",
    },
    Turkish = {
        Win = "🍌 Banana Eats Hub",
        LoadT = "Banana Eats Hub", LoadSub = "HackerAI tarafından",
        TabM = "⚡ Ana", TabV = "👁️ Görsel", TabX = "🔧 Diğer", TabA = "📜 Hakkında",
        Fly = "Uçma", FlyD = "WASD + Boşluk/Shift", FlyS = "Uçma Hızı",
        Noclip = "Duvardan Geç", NoclipD = "Duvarlardan geç",
        Speed = "Hız", SpeedD = "Süper hız", SpeedV = "Hız Değeri",
        ARun = "Otomatik Kaçış", ARunD = "Muzdan kaç",
        AEsc = "Otomatik Çıkış", AEscD = "Çıkışa ışınlan",
        ACol = "Otomatik Topla", AColD = "Para/eşya topla",
        ESPb = "ESP Muz", ESPbD = "Sadece muz kırmızı",
        ESPp = "ESP Kurtulanlar", ESPpD = "Diğer oyuncular yeşil",
        ESPe = "ESP Çıkışlar", ESPeD = "Çıkış kapıları",
        ESPc = "ESP Rengi", ESPcD = "Renk seç",
        AFK = "Anti AFK", AFKD = "Atılma engelle",
        WS = "Yürüme Hızı", JP = "Zıplama Gücü",
        Full = "Fullbright", FullD = "Maksimum parlaklık",
        Code = "Otomatik Kod", CodeD = "Günlük kodu al",
        Lang = "Dil",
        EN = "🇬🇧 English", TR = "🇹🇷 Türkçe", RU = "🇷🇺 Русский",
        NotiLoad = "Script yüklendi! K tuşu ile GUI",
        SG = "🎮 OYNANIŞ", SM = "🏃 HAREKET", SE = "👁️ ESP", SC = "🧍 KARAKTER", SP = "🛡️ KORUMA",
        AboutT = "🍌 Banana Eats Hub v4",
        AboutC = "Merhaba! Bu bir Banana Eats scriptidir.\nBu scripti kullandığınız için teşekkürler!\n\n=== ÖZELLİKLER ===\n🍌 Muzdan Kaçış\n🚀 Uçma + Duvardan Geç + Hız\n👁️ ESP: Muz / Kurtulanlar / Çıkışlar\n💰 Otomatik Para & Eşya Toplama\n🔦 Fullbright | 🔑 Otomatik Kod\n🛡️ Anti AFK\n\nRayfield UI ile yapıldı\nv4.0 - Tamamen Düzeltildi",
        SG2 = "⚡ EKSTRA",
        AutoTrap = "Tuzağı Kaldır", TrapD = "Çıkıştaki tuzakları kaldır",
        WalkspeedH = "Hızlı Yürüme", WalkspeedHD = "40 hız ayarla",
    },
    Russian = {
        Win = "🍌 Banana Eats Hub",
        LoadT = "Banana Eats Hub", LoadSub = "от HackerAI",
        TabM = "⚡ Главная", TabV = "👁️ Визуал", TabX = "🔧 Прочее", TabA = "📜 О скрипте",
        Fly = "Полёт", FlyD = "WASD + Пробел/Shift", FlyS = "Скорость",
        Noclip = "Ноклип", NoclipD = "Сквозь стены",
        Speed = "Ускорение", SpeedD = "Супер скорость", SpeedV = "Значение",
        ARun = "Автопобег", ARunD = "Бежать от банана",
        AEsc = "Автовыход", AEscD = "ТП к выходу",
        ACol = "Автосбор", AColD = "Сбор монет",
        ESPb = "ESP Банан", ESPbD = "Банан красный",
        ESPp = "ESP Выжившие", ESPpD = "Другие игроки зелёные",
        ESPe = "ESP Выходы", ESPeD = "Выходы подсветка",
        ESPc = "Цвет ESP", ESPcD = "Выбрать цвет",
        AFK = "Анти AFK", AFKD = "Без кика",
        WS = "Скорость", JP = "Прыжок",
        Full = "Fullbright", FullD = "Макс яркость",
        Code = "Авто код", CodeD = "Получить код",
        Lang = "Язык",
        EN = "🇬🇧 English", TR = "🇹🇷 Türkçe", RU = "🇷🇺 Русский",
        NotiLoad = "Скрипт загружен! K для меню",
        SG = "🎮 ГЕЙМПЛЕЙ", SM = "🏃 ДВИЖЕНИЕ", SE = "👁️ ESP", SC = "🧍 ПЕРСОНАЖ", SP = "🛡️ ЗАЩИТА",
        AboutT = "🍌 Banana Eats Hub v4",
        AboutC = "Привет! Это скрипт для Banana Eats.\nСпасибо за использование!\n\n=== ФУНКЦИИ ===\n🍌 Побег от Банана\n🚀 Полёт + Ноклип + Скорость\n👁️ ESP: Банан / Выжившие / Выходы\n💰 Автосбор монет\n🔦 Fullbright | 🔑 Авто код\n🛡️ Анти AFK\n\nRayfield UI\nv4.0 - Полностью исправлено",
        SG2 = "⚡ ДОПОЛНИТЕЛЬНО",
        AutoTrap = "Убрать ловушку", TrapD = "Убрать ловушки у выхода",
        WalkspeedH = "Быстрая ходьба", WalkspeedHD = "Установить 40",
    }
}

local CurrentLang = Lang.English
local function T(s)
    local t = CurrentLang and CurrentLang[s]
    if t == nil then t = Lang.English[s] end
    return t or s
end

-- ==================== STATE ====================
local State = {
    Fly = false, FlySpeed = 50,
    Noclip = false,
    Speed = false, SpeedValue = 24,
    AutoRun = false, AutoEscape = false, AutoCollect = false,
    ESPBanana = false, ESPPlayers = false, ESPExits = false,
    ESPColor = Color3.fromRGB(255, 50, 50),
    AntiAFK = false, Fullbright = false,
    Walkspeed = 16, JumpPower = 50,
    AutoTrap = false, FastWS = false,
}

local ESPObjs = {}
local FlyCon, NoclipCon, SpeedCon, WSCon, AFKCon, ESPCon = nil, nil, nil, nil, nil, nil

-- ==================== GAME-SPECIFIC FUNCTIONS ====================
-- Detect Banana using actual game structure
local function isBanana(player)
    -- Check Teams service
    local bananaTeam = Teams and (Teams:FindFirstChild("Banana") or Teams:FindFirstChild("bananas"))
    if bananaTeam and player.Team == bananaTeam then return true end
    
    -- Check character for banana parts
    local char = player.Character
    if not char then return false end
    for _, v in pairs(char:GetDescendants()) do
        if v.Name:lower():find("banana") then return true end
        if v:IsA("StringValue") and v.Name:lower():find("role") and v.Value:lower():find("banana") then return true end
    end
    
    -- Check if NOT on runners team
    local runnersTeam = Teams and Teams:FindFirstChild("Runners")
    if runnersTeam and player.Team ~= runnersTeam and player.Team ~= nil then return true end
    
    return false
end

local function getBanana()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and isBanana(p) then
            local c = p.Character
            if c then
                local h = c:FindFirstChild("HumanoidRootPart")
                if h then return p, h end
            end
        end
    end
    return nil, nil
end

local function getSurvivors()
    local t = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and not isBanana(p) then
            local c = p.Character
            if c and c:FindFirstChild("HumanoidRootPart") then
                table.insert(t, {Player = p, Char = c, HRP = c:FindFirstChild("HumanoidRootPart")})
            end
        end
    end
    return t
end

-- Find exits using ACTUAL game structure: Workspace.GameKeeper.Exits.EscapeDoor
local function findExits()
    local exits = {}
    -- Method 1: GameKeeper structure
    local success, result = pcall(function()
        local gk = Workspace:FindFirstChild("GameKeeper")
        if gk then
            local ex = gk:FindFirstChild("Exits")
            if ex then
                for _, v in pairs(ex:GetChildren()) do
                    if v.Name == "EscapeDoor" then
                        for _, j in pairs(v:GetChildren()) do
                            if j:IsA("BasePart") and j.Transparency < 1 then
                                table.insert(exits, j)
                            end
                        end
                        -- Also add the door itself
                        for _, j in pairs(v:GetDescendants()) do
                            if j:IsA("BasePart") and j.Transparency < 0.5 and j.Size.Magnitude > 5 then
                                table.insert(exits, j)
                            end
                        end
                    end
                end
            end
        end
    end)
    
    -- Method 2: Search any BasePart named exit/door/gate
    if #exits == 0 then
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("BasePart") and v.Transparency < 1 then
                local n = v.Name:lower()
                if (n:find("exit") or n:find("door") or n:find("gate") or n:find("escape")) and v.Size.Magnitude > 2 then
                    table.insert(exits, v)
                end
            end
        end
    end
    
    -- Method 3: Search ExitTag parts
    if #exits == 0 then
        for _, v in pairs(Workspace:GetDescendants()) do
            if v.Name == "ExitTag" and v:IsA("BasePart") then
                table.insert(exits, v)
            end
        end
    end
    
    return exits
end

-- Find collectibles using actual game structure
local function findCollectibles()
    local items = {}
    
    -- Method 1: GameKeeper Map Tokens
    local success, result = pcall(function()
        local gk = Workspace:FindFirstChild("GameKeeper")
        if gk then
            local map = gk:FindFirstChild("Map")
            if map then
                local tokens = map:FindFirstChild("Tokens")
                if tokens then
                    for _, v in pairs(tokens:GetChildren()) do
                        if v:IsA("BasePart") and v.Transparency < 1 then
                            table.insert(items, v)
                        end
                    end
                end
                -- Items folder
                local itemsF = map:FindFirstChild("Items")
                if itemsF then
                    for _, v in pairs(itemsF:GetDescendants()) do
                        if v:IsA("BasePart") and v.Transparency < 1 then
                            table.insert(items, v)
                        end
                    end
                end
            end
        end
    end)
    
    -- Method 2: General search for collectible parts
    for _, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Transparency < 1 and v.CanCollide == false then
            local n = v.Name:lower()
            if n:find("coin") or n:find("candy") or n:find("money") or n:find("gem") or 
               n:find("token") or n:find("piece") or n:find("heart") or n:find("star") or
               n:find("collect") or n:find("pumpkin") or n:find("cake") or n:find("cherry") then
                -- Avoid duplicates
                local dup = false
                for _, e in pairs(items) do
                    if e == v then dup = true; break end
                end
                if not dup then table.insert(items, v) end
            end
        end
    end
    
    return items
end

-- ==================== FLY ====================
local function toggleFly()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum then return end
    
    if State.Fly then
        hum.PlatformStand = true
        local bv = Instance.new("BodyVelocity")
        bv.Velocity = Vector3.new(0,0,0)
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Parent = hrp
        local bg = Instance.new("BodyGyro")
        bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bg.CFrame = hrp.CFrame
        bg.Parent = hrp
        
        FlyCon = RunService.Heartbeat:Connect(function()
            if not State.Fly or not hrp.Parent then if State.Fly then State.Fly = false end return end
            local cam = Workspace.CurrentCamera
            local md = Vector3.new()
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then md = md + cam.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then md = md - cam.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then md = md - cam.CFrame.RightVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then md = md + cam.CFrame.RightVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then md = md + Vector3.new(0,1,0) end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then md = md - Vector3.new(0,1,0) end
            if md.Magnitude > 0 then
                md = md.Unit * State.FlySpeed
                bv.Velocity = md
                bg.CFrame = CFrame.lookAt(hrp.Position, hrp.Position + md)
            else bv.Velocity = Vector3.new(0,0,0) end
        end)
    else
        hum.PlatformStand = false
        if FlyCon then FlyCon:Disconnect() FlyCon = nil end
        if hrp then
            local bv = hrp:FindFirstChildOfClass("BodyVelocity")
            local bg = hrp:FindFirstChildOfClass("BodyGyro")
            if bv then bv:Destroy() end
            if bg then bg:Destroy() end
        end
    end
end

-- ==================== NOCLIP ====================
local function toggleNoclip()
    if NoclipCon then NoclipCon:Disconnect() NoclipCon = nil end
    if State.Noclip then
        NoclipCon = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if not char then return end
            for _, v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide then v.CanCollide = false end
            end
        end)
    end
end

-- ==================== SPEED ====================
local function toggleSpeed()
    if SpeedCon then SpeedCon:Disconnect() SpeedCon = nil end
    if State.Speed then
        SpeedCon = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if not char then return end
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = State.SpeedValue end
        end)
    else
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = State.Walkspeed end
        end
    end
end

-- ==================== AUTO RUN ====================
local function runAutoRun()
    while State.AutoRun do
        task.wait(0.15)
        local char = LocalPlayer.Character
        if not char then continue end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then continue end
        local _, bHRP = getBanana()
        if bHRP then
            local dist = (hrp.Position - bHRP.Position).Magnitude
            if dist < 120 then
                local dir = (hrp.Position - bHRP.Position).Unit
                hrp.CFrame = CFrame.new(hrp.Position + dir * 50 + Vector3.new(0, 2, 0))
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then hum:Move(dir) end
            end
        end
    end
end

-- ==================== AUTO ESCAPE (uses actual game structure) ====================
local function runAutoEscape()
    while State.AutoEscape do
        task.wait(0.2)
        local char = LocalPlayer.Character
        if not char then continue end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then continue end
        
        local exits = findExits()
        if #exits > 0 then
            local best, bestD = nil, math.huge
            for _, e in pairs(exits) do
                local d = (hrp.Position - e.Position).Magnitude
                if d < bestD then bestD = d; best = e end
            end
            if best and bestD > 5 then
                hrp.CFrame = CFrame.new(best.Position + Vector3.new(0, 3, 0))
            end
        end
    end
end

-- ==================== AUTO COLLECT (fast, uses game structure) ====================
local function runAutoCollect()
    while State.AutoCollect do
        task.wait(0.1) -- VERY fast
        local char = LocalPlayer.Character
        if not char then continue end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then continue end
        
        local items = findCollectibles()
        if #items > 0 then
            local best, bestD = nil, math.huge
            for _, v in pairs(items) do
                local d = (hrp.Position - v.Position).Magnitude
                if d < bestD and d < 250 then bestD = d; best = v end
            end
            if best and bestD > 3 then
                hrp.CFrame = CFrame.new(best.Position + Vector3.new(0, 2, 0))
            end
        end
    end
end

-- ==================== ESP ====================
local function crESP(obj, col, txt)
    if ESPObjs[obj] then return end
    local ok = pcall(function()
        local h = Instance.new("Highlight")
        h.FillColor = col; h.OutlineColor = Color3.new(1,1,1)
        h.FillTransparency = 0.35; h.OutlineTransparency = 0
        h.Adornee = obj; h.Parent = obj
        local bb = nil
        if txt then
            local ad = obj:IsA("Model") and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChild("Head")) or obj
            if ad then
                bb = Instance.new("BillboardGui")
                bb.Adornee = ad; bb.Size = UDim2.new(0,200,0,50)
                bb.StudsOffset = Vector3.new(0,3,0); bb.AlwaysOnTop = true; bb.Parent = ad
                local lb = Instance.new("TextLabel")
                lb.Size = UDim2.new(1,0,1,0); lb.BackgroundTransparency = 1
                lb.Text = txt; lb.TextColor3 = col; lb.TextScaled = true
                lb.Font = Enum.Font.GothamBold; lb.BorderSizePixel = 0; lb.Parent = bb
            end
        end
        ESPObjs[obj] = {H = h, BB = bb}
    end)
end

local function clrESP()
    for o, _ in pairs(ESPObjs) do
        pcall(function()
            if ESPObjs[o] then
                if ESPObjs[o].H then ESPObjs[o].H:Destroy() end
                if ESPObjs[o].BB then ESPObjs[o].BB:Destroy() end
            end
        end)
    end
    ESPObjs = {}
end

local function updESP()
    if ESPCon then ESPCon:Disconnect() ESPCon = nil end
    clrESP()
    if State.ESPBanana or State.ESPPlayers or State.ESPExits then
        ESPCon = RunService.Heartbeat:Connect(function()
            for o, _ in pairs(ESPObjs) do if not o.Parent then pcall(function() if ESPObjs[o] then if ESPObjs[o].H then ESPObjs[o].H:Destroy() end if ESPObjs[o].BB then ESPObjs[o].BB:Destroy() end end end) ESPObjs[o] = nil end end
            if State.ESPBanana then
                for _, p in pairs(Players:GetPlayers()) do
                    if p ~= LocalPlayer and isBanana(p) then
                        local c = p.Character
                        if c and not ESPObjs[c] then crESP(c, Color3.fromRGB(255,50,50), "🍌 BANANA"); break end
                    end
                end
            end
            if State.ESPPlayers then
                for _, p in pairs(Players:GetPlayers()) do
                    if p ~= LocalPlayer and not isBanana(p) then
                        local c = p.Character
                        if c and c:FindFirstChild("HumanoidRootPart") and not ESPObjs[c] then
                            crESP(c, State.ESPColor, "👤 "..p.Name)
                        end
                    end
                end
            end
            if State.ESPExits then
                for _, e in pairs(findExits()) do
                    if not ESPObjs[e] then crESP(e, Color3.fromRGB(0,255,100), "🚪 EXIT") end
                end
            end
        end)
    end
end

-- ==================== ANTI AFK ====================
local function toggleAFK()
    if AFKCon then AFKCon:Disconnect() AFKCon = nil end
    if State.AntiAFK then
        AFKCon = LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end
end

-- ==================== WALKSPEED/JUMP ====================
local function applyWSJP()
    if WSCon then WSCon:Disconnect() WSCon = nil end
    WSCon = RunService.Heartbeat:Connect(function()
        local char = LocalPlayer.Character
        if not char then return end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            if not State.Speed then
                if State.FastWS then hum.WalkSpeed = 40 else hum.WalkSpeed = State.Walkspeed end
            end
            hum.JumpPower = State.JumpPower
        end
    end)
end

-- ==================== FULLBRIGHT ====================
local FBData = nil
local function toggleFullbright()
    State.Fullbright = not State.Fullbright
    if State.Fullbright then
        FBData = {
            Brightness = Lighting.Brightness, ClockTime = Lighting.ClockTime,
            FogEnd = Lighting.FogEnd, GlobalShadows = Lighting.GlobalShadows,
            Ambient = Lighting.Ambient
        }
        Lighting.Brightness = 1; Lighting.ClockTime = 12
        Lighting.FogEnd = 786543; Lighting.GlobalShadows = false
        Lighting.Ambient = Color3.fromRGB(178,178,178)
    else
        if FBData then
            Lighting.Brightness = FBData.Brightness; Lighting.ClockTime = FBData.ClockTime
            Lighting.FogEnd = FBData.FogEnd; Lighting.GlobalShadows = FBData.GlobalShadows
            Lighting.Ambient = FBData.Ambient
        end
    end
end

-- ==================== AUTO CODE ====================
local function claimCode()
    local ok = pcall(function()
        local code = Workspace:FindFirstChild("GameProperties")
        if code and code:FindFirstChild("SecretCode") then
            LocalPlayer.PlayerGui.CodeGui.Frame.Buttons.Input.Text = code.SecretCode.Value
            task.wait(0.2)
            firesignal(LocalPlayer.PlayerGui.CodeGui.Frame.Buttons.Redeem.MouseButton1Down)
        end
    end)
    if ok then Rayfield:Notify({Title="Code", Content="Code claimed!", Duration=3}) 
    else Rayfield:Notify({Title="Code", Content="No code available", Duration=3}) end
end

-- ==================== AUTO REMOVE TRAP ====================
local function runAutoTrap()
    while State.AutoTrap do
        task.wait(0.5)
        local exits = findExits()
        for _, e in pairs(exits) do
            -- Remove nearby parts that look like traps (peels, small parts)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("BasePart") and v.Transparency < 1 and v.Size.Magnitude < 5 then
                    local d = (e.Position - v.Position).Magnitude
                    if d < 10 and v.Name:lower():find("trap") or v.Name:lower():find("peel") or v.Name:lower():find("banana") and v.Parent ~= LocalPlayer.Character then
                        v:Destroy()
                    end
                end
            end
        end
    end
end

-- ==================== UI SETUP ====================
local Window = Rayfield:CreateWindow({
    Name = T("Win"),
    LoadingTitle = T("LoadT"),
    LoadingSubtitle = T("LoadSub"),
    ShowText = "Banana Eats",
    Theme = "Default",
    ToggleUIKeybind = "K",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {Enabled = true, FolderName = "BananaEatsHub", FileName = "Config"},
    Discord = {Enabled = false, Invite = "", RememberJoins = false},
    KeySystem = false
})

local TabM = Window:CreateTab(T("TabM"), "home")
local TabV = Window:CreateTab(T("TabV"), "eye")
local TabX = Window:CreateTab(T("TabX"), "settings")
local TabA = Window:CreateTab(T("TabA"), "info")

-- ==================== MAIN TAB ====================
TabM:CreateSection(T("SG"))

TabM:CreateToggle({Name=T("ARun"), CurrentValue=false, Flag="ARun", Callback=function(v) State.AutoRun=v if v then task.spawn(runAutoRun) end Rayfield:Notify({Title=T("ARun"), Content=v and "✅ ON" or "❌ OFF", Duration=1.5}) end})
TabM:CreateToggle({Name=T("AEsc"), CurrentValue=false, Flag="AEsc", Callback=function(v) State.AutoEscape=v if v then task.spawn(runAutoEscape) end Rayfield:Notify({Title=T("AEsc"), Content=v and "✅ ON" or "❌ OFF", Duration=1.5}) end})
TabM:CreateToggle({Name=T("ACol"), CurrentValue=false, Flag="ACol", Callback=function(v) State.AutoCollect=v if v then task.spawn(runAutoCollect) end Rayfield:Notify({Title=T("ACol"), Content=v and "✅ ON" or "❌ OFF", Duration=1.5}) end})

-- Extra
TabM:CreateSection(T("SG2"))
TabM:CreateToggle({Name=T("AutoTrap"), CurrentValue=false, Flag="AutoTrap", Callback=function(v) State.AutoTrap=v if v then task.spawn(runAutoTrap) end end})
TabM:CreateToggle({Name=T("WalkspeedH"), CurrentValue=false, Flag="FastWS", Callback=function(v) State.FastWS=v end})

TabM:CreateSection(T("SM"))
TabM:CreateToggle({Name=T("Fly"), CurrentValue=false, Flag="Fly", Callback=function(v) State.Fly=v toggleFly() Rayfield:Notify({Title=T("Fly"), Content=v and "✅ ON" or "❌ OFF", Duration=1.5}) end})
TabM:CreateSlider({Name=T("FlyS"), Range={10,200}, Increment=5, Suffix="", CurrentValue=50, Flag="FlyS", Callback=function(v) State.FlySpeed=v end})
TabM:CreateToggle({Name=T("Noclip"), CurrentValue=false, Flag="Noclip", Callback=function(v) State.Noclip=v toggleNoclip() Rayfield:Notify({Title=T("Noclip"), Content=v and "✅ ON" or "❌ OFF", Duration=1.5}) end})
TabM:CreateToggle({Name=T("Speed"), CurrentValue=false, Flag="Speed", Callback=function(v) State.Speed=v toggleSpeed() Rayfield:Notify({Title=T("Speed"), Content=v and "✅ ON" or "❌ OFF", Duration=1.5}) end})
TabM:CreateSlider({Name=T("SpeedV"), Range={16,120}, Increment=1, Suffix="", CurrentValue=24, Flag="SpeedV", Callback=function(v) State.SpeedValue=v end})

-- ==================== VISUALS TAB ====================
TabV:CreateSection(T("SE"))
TabV:CreateToggle({Name=T("ESPb"), CurrentValue=false, Flag="ESPb", Callback=function(v) State.ESPBanana=v updESP() end})
TabV:CreateToggle({Name=T("ESPp"), CurrentValue=false, Flag="ESPp", Callback=function(v) State.ESPPlayers=v updESP() end})
TabV:CreateToggle({Name=T("ESPe"), CurrentValue=false, Flag="ESPe", Callback=function(v) State.ESPExits=v updESP() end})
TabV:CreateColorPicker({Name=T("ESPc"), Color=Color3.fromRGB(255,50,50), Flag="ESPc", Callback=function(v) State.ESPColor=v updESP() end})

-- ==================== MISC TAB ====================
TabX:CreateSection(T("SC"))
TabX:CreateSlider({Name=T("WS"), Range={16,200}, Increment=1, Suffix="", CurrentValue=16, Flag="WS", Callback=function(v) State.Walkspeed=v end})
TabX:CreateSlider({Name=T("JP"), Range={50,200}, Increment=5, Suffix="", CurrentValue=50, Flag="JP", Callback=function(v) State.JumpPower=v end})

TabX:CreateSection(T("SP"))
TabX:CreateToggle({Name=T("AFK"), CurrentValue=false, Flag="AFK", Callback=function(v) State.AntiAFK=v toggleAFK() Rayfield:Notify({Title=T("AFK"), Content=v and "✅ ON" or "❌ OFF", Duration=1.5}) end})

-- Extra buttons
TabX:CreateSection("⚡ ACTIONS")
TabX:CreateButton({Name=T("Full"), Callback=function() toggleFullbright() Rayfield:Notify({Title=T("Full"), Content=State.Fullbright and "✅ ON" or "❌ OFF", Duration=1.5}) end})
TabX:CreateButton({Name=T("Code"), Callback=claimCode})

-- Language
TabX:CreateSection(T("Lang"))

-- DIRECT FIX: Use Rayfield's native dropdown for language
local LangDD = TabX:CreateDropdown({
    Name = "Language / Dil / Язык",
    Options = {"English", "Türkçe", "Русский"},
    CurrentOption = {"English"},
    MultipleOptions = false,
    Flag = "LangSelect",
    Callback = function(opt)
        local s = opt[1]
        if s == "English" then CurrentLang = Lang.English
        elseif s == "Türkçe" then CurrentLang = Lang.Turkish
        elseif s == "Русский" then CurrentLang = Lang.Russian end
        Rayfield:Notify({Title="Language", Content="Changed to "..s, Duration=2})
    end
})

-- ==================== ABOUT TAB ====================
TabA:CreateSection(T("AboutT"))
TabA:CreateParagraph({Title=T("AboutT"), Content=T("AboutC")})

TabA:CreateLabel("", "")
TabA:CreateButton({
    Name = "📋 Copy Discord Link",
    Callback = function()
        setclipboard("discord.gg/bananahub")
        Rayfield:Notify({Title="Copied!", Content="Discord link copied", Duration=3})
    end
})

TabA:CreateButton({
    Name = "🔄 Rejoin Server",
    Callback = function()
        local tp = game:GetService("TeleportService")
        tp:Teleport(game.PlaceId, LocalPlayer)
    end
})

-- ==================== INIT ====================
applyWSJP()

LocalPlayer.CharacterAdded:Connect(function(c)
    task.wait(0.5)
    if State.Fly then toggleFly() end
    if State.Noclip then toggleNoclip() end
    if State.Speed then toggleSpeed() end
    applyWSJP()
end)

Rayfield:LoadConfiguration()

Rayfield:Notify({
    Title = "🍌 Banana Eats Hub",
    Content = T("NotiLoad"),
    Duration = 4,
    Image = "check-circle"
})
