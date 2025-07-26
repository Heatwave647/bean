-- This tells FiveM to use its default spawn manager, which will handle
-- spawning the player automatically after the loading screen is gone.
exports.spawnmanager:setAutoSpawn(true)

-- This is an event handler that listens for the 'playerSpawned' event.
-- This event fires automatically after the player has loaded into the server
-- and their character has been created in the game world.
AddEventHandler('playerSpawned', function()
    -- Once the player has spawned, we send a message to the NUI (the HTML page).
    -- The message has an 'action' of 'hide', which our JavaScript will listen for.
    SendNUIMessage({
        action = 'hide'
    })
end)