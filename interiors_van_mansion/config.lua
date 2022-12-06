Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

-- imap
Config.Unknown = false  
 
-- ipl 
Config.Unknown = false  

Config.Mansion = false   
Config.Trim = false 
Config.LH = false
Config.Trash = false
Config.Detail = false
Config.Decals = false

-- current interior 25858 position is: vec3(2821.031006, 284.254486, 49.714657)
Config.Label = "Van Horn Mansion"
Config.x = 2821.031006  --- vector3(2824.23, 274.6, 47.85)
Config.y = 284.254486
Config.z = 49.714657  
 
Config.door_hash_v1 = {
    ----Valentine 
}

Config.door_hash_v2 = {
    --[[
    [3798786] = {3798786,-542955242,"p_door04x",-322.7286, 767.2573, 121.7059},  -- "Name": "Room 2A", // Valentine
    [3459074] = {3459074,-542955242,"p_door04x",-321.5221, 762.2973, 121.6815},  -- "Name": "Room 2B", // Valentine
    --]]
}  

--------------------------------------------------
-- Teleport Cofiguration  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F }
Config.TeleporterPrompt = "Use Door [~e~"..  Config.definedkey.named  .."~q~]"
Config.TeleportDistance = 0.5
Config.WaitTimer = 1000
Config.FadeTimer = 2

Config.TeleportEnter_On = false
Config.EnterRoom = {x = -306.673, y= 803.274, z=122.175, h = 000.00 } -- upstairs right  - room exist - structure interior missing 
Config.EnterRoom2B = {x = -312.446, y= 802.122, z=122.176, h = 000.00 }  -- upstairs left  - room exist - structure interior missing  

Config.TeleportExit_On = false
Config.ExitRoom = {x = -306.695, y= 801.549, z=121.732 , h = 000.00 }
Config.ExitRoom2B = {x = -312.651, y= 801.041, z=121.730, h = 000.00 }  
 