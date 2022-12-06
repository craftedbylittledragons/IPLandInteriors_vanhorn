Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

-- imap
Config.Smoke = false 
Config.HayBales = false  
 
-- ipl 
Config.Unknown = false 
Config.FarmHouse = false 
Config.Details = false  
Config.Decal = false  
Config.Shadows = false  

Config.Debris = false 

Config.LabAnimals = true
Config.Monster = true 

Config.Trolley = false
Config.Prop1 = false
Config.Prop2 = false
Config.Prop3 = false
Config.Wires = false
Config.Stand = false
Config.Shelves = false
Config.Parts = false

Config.Label = "Van Horn Farm House"
Config.x = 2936.23  --- vector3(2824.23, 274.6, 47.85)
Config.y = 775.6
Config.z = 51.85  
   -- vector3(2936.73, 775.98, 51.89)
 
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
 