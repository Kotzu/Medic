-- Function to draw text on the screen for the player
function DisplayHelpText(text)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

-- Main thread for the Tailor NPC interaction
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distance = #(playerCoords - Config.TailorNPC.coords)

        -- Check if the player is within the interaction distance of the NPC
        if distance < Config.TailorNPC.interactionDistance then
            -- Display the interaction prompt
            DisplayHelpText(Config.TailorNPC.interactPrompt)
            -- If the player presses the interaction key
            if IsControlJustReleased(0, 38) then -- 'E' key
                -- Print to console for debug purposes
                print("Player interacted with the Tailor NPC.")
                -- Trigger an event to start the Tailor job (server-side logic needed here)
                TriggerServerEvent('TailorJob:StartTailor')
            end
        end
    end
end)