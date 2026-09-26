local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Souler",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Souler/main/Soulerfix.rbxm",

    Speed = 225,
    DelayTime = 4.8,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2.5,
    },

    Cycles = {
        Min = 4,
        Max = 7.5,
        WaitTime = 1.4,
    },

    CamShake = {
        true,
        {17.5, 50, 0.3, 1.1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11689830019",
            Image2 = "rbxassetid://11689830019",

            Shake = true,

            Sound1 = {
                10483837590,
                {Volume = 0.5},
            },

            Sound2 = {
                10483837590,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(6, 94, 226),
            },

            Tease = {
                false,
                Min = 0,
                Max = 0,
            },
        },
    },

    CustomDialog = {
        "You died to Souler..."
    },
})

-- Debug callbacks
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Souler has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Souler has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Souler has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Souler has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Souler entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Souler")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Souler.")
end

Creator.runEntity(entity)
