-- Check game
if game.PlaceId == 12996550309
    local CurrentVersion = "Tutorial - RunStar Simulator v1"

    -- Call the libary
    loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))() 

    -- Main frame
    local GUI = Mercury:Create{
        Name = CurrentVersion,
        Size = UDim2.fromOffset(600, 400),
        Theme = Mercury.Themes.Dark,
        Link = "https://github.com/deeeity/mercury-lib"
    }

    -- Var
    local isFarmingWins = false
    local selectedTreadmillValue = nil;
    local isFarmingTread = false

    -- local lists
    local TreadList = {
        -- world 1
        ["+1/s Treadmill"] = "1",
        ["+5/s Treadmill"] = "2",
        ["+10/s Treadmill"] = "3",
        ["+20/s Treadmill"] = "4",
        ["+25/s Treadmill"] = "5",
        ["+30/s Treadmill"] = "6",
        -- world 2
        ["+40/s Treadmill"] = "8",
        ["+60/s Treadmill"] = "9",
        ["+80/s Treadmill"] = "10",
        ["+100/s Treadmill"] = "11",
        ["+150/s Treadmill"] = "12",
        ["+200/s Treadmill"] = "13",
        -- world 3
        ["+1000/s Treadmill"] = "15",
        ["+1400/s Treadmill"] = "16",
        ["+1800/s Treadmill"] = "17",
        ["+2200/s Treadmill"] = "18",
        ["+2600/s Treadmill"] = "19",
        ["+3000/s Treadmill"] = "20",
        -- vip
        ["+30/s Treadmill"] = "7",
        ["+120/s Treadmill"] = "14",
        ["+2000/s Treadmill"] = "21",
    }

    -- FarmTab Creation
    local FarmTab = GUI:Tab{
        Name = "Auto Farm",
        Icon = "rbxasset://14036361048"
    } 

    local infWinsLabel - FarmTab:Label{
        Text = "",
        Description = "You must have the treadmill unlocked " .. "/nIf the farm doesnt work enter the treadmill manually and try again "
    }

    FarmTab:Dropdown{
        Name = "Select Treadmill",
        StartingText = "Select...",
        Description = Must be a unlocked treadmill,
        Items = {
            "World 1 (Placeholder)"
            "+1/s Treadmill"
            "+5/s Treadmill"
            "+10/s Treadmill"
            "+20/s Treadmill"
            "+25/s Treadmill"
            "+30/s Treadmill"
            "World 2 (Placeholder)"
            "+40/s Treadmill"
            "+60/s Treadmill"
            "+80/s Treadmill"
            "+100/s Treadmill"
            "+150/s Treadmill"
            "+200/s Treadmill"
            "World 3 (Placeholder)"
            "+1000/s Treadmill"
            "+1400/s Treadmill"
            "+1800/s Treadmill"
            "+2200/s Treadmill"
            "+2600/s Treadmill"
            "+3000/s Treadmill"
            "VIP (Placeholder | Gamepass Needed)"
            "+30/s Treadmill"
            "+120/s Treadmill"
            "+2000/s Treadmill"

        },
        Callback = function(item)
        selectedTreadmillValue = TreadList[item]
        print("Selected: ".. selectedTreadmillValue)
    }


    FarmTab:Toggle{
        Name = "Start Farming",
        StartingState = false,
        Description = "Farms the selected treadmill",
        Callback = function(state)
        isFarmingTread = state
        while isFarmingTread do
        if selectedTreadmillValue then
            local args = {
                [1] = selectedTreadmillValue
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Train"):WaitForChild("AddSpeed"):FireServer(unpack(args))
        end
        wait()
        end
     end
    }

    local infWinsLabel = FarmTab:Label{
        Text = "Inf Wins Warning:",
        Description = "Only use the method from the world ⬇ Scroll Down ⬇ "
    }


    FarmTab:Toggle{
        Name = "Inf Wins",
        StartingState = false,
        Description = "World 1",
        Callback = function(state)
        isFarmingWins = state
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RacePrepare"):InvokeServer()
        wait()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RaceStart"):InvokeServer()
        wait()
        local args = {
            [1] = 1
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RaceEnd"):InvokeServer(unpack(args))
        wait()
        local args = {
            [1] = true
            [2] = 1,
            [3] = 1
        }

        game:GetService("ReplicatedStorage").Remotes.Race.RaceReward:FireServer(unpack(args))
        wait()
        end
    end
    }  
    

    FarmTab:Toggle{
        Name = "Inf Wins",
        StartingState = false,
        Description = "World 2",
        Callback = function(state)
        isFarmingWins = state
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RacePrepare"):InvokeServer()
        wait()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RaceStart"):InvokeServer()
        wait()
        local args = {
            [1] = 1
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RaceEnd"):InvokeServer(unpack(args))
        wait()
        local args = {
            [1] = true
            [2] = 2,
            [3] = 1
        }

        game:GetService("ReplicatedStorage").Remotes.Race.RaceReward:FireServer(unpack(args))
        wait()
        end
    end
    }  
    

    FarmTab:Toggle{
        Name = "Inf Wins",
        StartingState = false,
        Description = "World 3",
        Callback = function(state)
        isFarmingWins = state
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RacePrepare"):InvokeServer()
        wait()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RaceStart"):InvokeServer()
        wait()
        local args = {
            [1] = 1
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RaceEnd"):InvokeServer(unpack(args))
        wait()
        local args = {
            [1] = true
            [2] = 3,
            [3] = 1
        }

        game:GetService("ReplicatedStorage").Remotes.Race.RaceReward:FireServer(unpack(args))
        wait()
        end
    end
    }  
end
