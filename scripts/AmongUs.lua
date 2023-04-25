---====== Define spawner ======---

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "Among Us Impostor",
    Model = "https://github.com/powerbox1000/doors-entity-storage/blob/main/models/AmongUs.rbxm?raw=true",
    MoveDelay = 2,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    SpawnInFront = false,
    ShatterLights = false,
    FlickerLights = {
        Enabled = true,
        Duration = 1
    },
    Cycles = {
        Min = 1,
        Max = 1,
        Delay = 2
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {
        "You died to who you call the Among Us Impostor",
        "It likes to spawn around door 69",
        "Be on the lookout for it's sussyness"
    },
    IsCuriousLight = false
})

Spawner.runEntity(entity)

local sound = Instance.new("Sound")
sound.Parent = workspace:WaitForChild("Among Us Impostor")
sound.SoundId = "rbxassetid://5799014146"
sound.Looped = true
sound.RollOffMaxDistance = 10000
sound.RollOffMaxDistance = 10
sound.EmitterSize = 100000
sound.Volume = 1
sound:Play()
