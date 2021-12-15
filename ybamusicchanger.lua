local rewriteMusic = true -- Add Or Rewrite music?

local TrainStation = {
    ["Giorno's Theme"] = "rbxassetid://3590110076",
    ["Next To You"]    = "rbxassetid://260928315"
}

local GlobalMusic = {
    ["Italy"]               = "rbxassetid://2662661763",
    ["End of GW"]           = "rbxassetid://3649473612",
    ["Fighting Gold"]       = "rbxassetid://2477584498",
    ["Magnetica"]           = "rbxassetid://3760137021",
    ["GW Theme"]            = "rbxassetid://2662612886",
    ["Squadra"]             = "rbxassetid://2662616803",
    ["Tortue Dance"]        = "rbxassetid://2662612031",
    ["Traitor's Req"]       = "rbxassetid://3811793053",
    ["Un Sogno"]            = "rbxassetid://2662703885",
    ["Traitor's Req Voc"]   = "rbxassetid://4298175971",
    ["Trish Theme"]         = "rbxassetid://3649504253",
    ["Carne"]               = "rbxassetid://3910932413",
    ["Vita"]                = "rbxassetid://3910809240",
    ["Fierce Fight"]        = "rbxassetid://3026494546",
    ["Zipper"]              = "rbxassetid://2662616124",
    ["Permamence"]          = "rbxassetid://3683368055",
    ["Devil"]               = "rbxassetid://3649662288",
    ["Incursione"]          = "rbxassetid://3069158533",
    ["Stardust Man Appears"]= "rbxassetid://624998010",
    ["Iggy Theme"]          = "rbxassetid://3090787408",
    ["Jotaro Theme"]        = "rbxassetid://4526638837",
    ["First Bomb"]          = "rbxassetid://604214862",
    ["Echoes Theme"]        = "rbxassetid://587055521",
    ["Squalo"]              = "rbxassetid://4646095601",
    ["Pesce"]               = "rbxassetid://4646096024",
    ["Second Bomb"]         = "rbxassetid://604217026",
    ["Noble Pope"]          = "rbxassetid://1310974242",
    ["Decisive Battle"]     = "rbxassetid://1093205910",
    ["Peaceful Street"]     = "rbxassetid://3048805264",
    ["Secco Theme"]         = "rbxassetid://4646096433",
    ["Third Bomb"]          = "rbxassetid://604220070",
    ["The Hand"]            = "rbxassetid://2301248067",
    ["Morio Cho Radio"]     = "rbxassetid://4059441875",
    ["Naranchia Theme"]     = "rbxassetid://2662692909"
}










local ws = workspace

if rewriteMusic then
    for i, v in pairs(ws.Locations["Train Station"].Sounds.MusicPlayer.Songs:GetChildren()) do

        v:Destroy() -- Removing Old Music

    end

    for i, v in pairs(ws.Locations["The Outskirts"].Sounds.MusicPlayer.Songs:GetChildren()) do

        v:Destroy() -- Removing Old Music

    end
end

-- Train Station


for k, v in pairs(TrainStation) do

    local sound = Instance.new("Sound", ws.Locations["Train Station"].Sounds.MusicPlayer.Songs) -- we will now call the radio "hand"
    sound.Name = k
    sound.Volume = 0.1
    sound.Pitch = 1
    sound.SoundId = v

end

-- Global

for k, v in pairs(GlobalMusic) do

    local sound = Instance.new("Sound", ws.Locations["The Outskirts"].Sounds.MusicPlayer.Songs) -- we will now call the radio "hand"
    sound.Name = k
    sound.Volume = 0.1
    sound.Pitch = 1
    sound.SoundId = v

end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Livelandr's Music Changer";
    Text = "Music changed! Reset to apply";
    Duration = 10;
})
