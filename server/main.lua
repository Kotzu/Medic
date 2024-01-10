-- Register server event for starting the Tailor job
RegisterServerEvent('TailorJob:StartTailor')
AddEventHandler('TailorJob:StartTailor', function()
    -- Print to console for debug purposes
    print("Tailor job started by player.")
    -- Server-side logic to handle the starting of the Tailor job
    -- ... (this will include checking player's eligibility, assigning tasks, etc.)
end)
