---====== Define spawner ======---

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "Baller",
    Model = "rbxassetid://11542250449", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
    Speed = 400,
    MoveDelay = 2,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    SpawnInFront = false,
    ShatterLights = true,
    FlickerLights = {
        Enabled = false,
        Duration = 1
    },
    Cycles = {
        Min = 1,
        Max = 1,
        Delay = 1.5
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    
    ResistCrucifix = true,
    BreakCrucifix = true,
    DeathMessage = {
        "Uhh...",
        "Alright."
    },
    IsCuriousLight = false
})

Spawner.runEntity(entity)
