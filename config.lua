Config = {}

Config.Framework = 'qbcore'  -- This sets the framework to QB-Core for the resource

-- Configuration for the Tailor NPC
Config.TailorNPC = {
    -- Coordinates where the NPC will spawn
    coords = vector3(-703.66, -152.2, 37.41),
    -- Direction the NPC will face
    heading = 90.0,
    -- Model of the NPC
    model = 's_m_m_tailor_01',
    -- Interaction distance
    interactionDistance = 2.5,
    -- Interaction prompt message
    interactPrompt = "Press ~INPUT_CONTEXT~ to talk to the Tailor."
}