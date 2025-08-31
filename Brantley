-- Real Roblox Walk Speed Boost Simulation
-- Safely changes your walk speed while "stealing"

local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- Function to start stealing
local function startStealing()
    print(Player.Name .. " started stealing!")
    Humanoid.WalkSpeed = 32 -- boosted speed
    print("Walk speed increased to " .. Humanoid.WalkSpeed)
end

-- Function to stop stealing
local function stopStealing()
    print(Player.Name .. " stopped stealing.")
    Humanoid.WalkSpeed = 16 -- reset to default
    print("Walk speed reset to " .. Humanoid.WalkSpeed)
end

-- Simulate actions
startStealing()
wait(3) -- simulate 3 seconds of stealing
stopStealing()
