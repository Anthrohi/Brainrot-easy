-- Educational Anti-Cheat Script
-- Monitors walk speed, jump power, and forbidden tools
-- Safe for Roblox Studio / private servers

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(char)
        local hum = char:WaitForChild("Humanoid")

        while char.Parent do
            wait(1)

            -- Check walk speed
            if hum.WalkSpeed > 20 then
                print("[Anti-Cheat] "..player.Name.." walk speed too high: "..hum.WalkSpeed)
                hum.WalkSpeed = 16 -- reset safely
            end

            -- Check jump power
            if hum.JumpPower > 60 then
                print("[Anti-Cheat] "..player.Name.." jump power too high: "..hum.JumpPower)
                hum.JumpPower = 50 -- reset safely
            end

            -- Check tools
            local backpack = player:WaitForChild("Backpack")
            for _, tool in ipairs(backpack:GetChildren()) do
                local forbidden = {"SuperSword", "GodTool"} -- add more forbidden tools here
                for _, name in ipairs(forbidden) do
                    if tool.Name == name then
                        print("[Anti-Cheat] "..player.Name.." has forbidden tool: "..tool.Name)
                        tool:Destroy()
                    end
                end
            end
        end
    end)
end)
