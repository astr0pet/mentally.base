--Made by HypnoticSiege (Some things from sadboilogan's Rich Presence https://github.com/sadboilogan/FiveM-RichPresence)
--This Rich Presence will not show the vehicle type in order to not leak any spawncodes you might want private as I see that as a problem on some servers
--This script will also update every 1 SECOND, change the Citizen.Wait times if you would like it more delayed
--If you need any help please contact me on Discord (HypnoticSiege#2909)
Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)

        --Discord Configuration (CONFIGURE TO YOUR NEEDS)
        SetDiscordAppId('515854760155283466') --Make an app here https://discord.com/developers/applications
        SetDiscordRichPresenceAsset('mentally_rp') --This is the big pictutre that will show you your profile
        SetDiscordRichPresenceAssetText('Playing on a Mentally RP') --This is the text that will show when hovering over the image above
        SetDiscordRichPresenceAction(0, "Connect", "fivem://connect/3.1.50.224:30120") --First Button on RPC, shows on side. Modify text and URL to your liking
        -- SetDiscordRichPresenceAction(1, "Website", "https://hypnoticsiege.codes") --Second Button RPC, shows under one above

        --Some information here to get player's location, vehicle, name, ID, and some more
        --Don't suggest touching this if you don't know what you are doing :) (Unless you want to change some text)
        local pId = GetPlayerServerId(PlayerId())
        local activeUser = 0
        for _, player in ipairs(GetActivePlayers()) do
			if GetPlayerPed(player) then
                activeUser = activeUser+1
            end
		end

        Citizen.Wait(1000)
        SetRichPresence("ID: " ..pId.. " | " ..activeUser.. " Warga")
        SetDiscordRichPresenceAsset('mentally_rp')
    end
end)