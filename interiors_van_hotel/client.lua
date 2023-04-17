---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false 

----------- turn on the bar ------
function EnableResouresYMAPS()            
    --[[ 
    -- Vanhorn --
    --RemoveImap(-428652579) -- New Hanover -- The Heartland -- Vanhorn -- Sheriff office -- Bounty Board
    RemoveImap(-1487154162) -- New Hanover -- The Heartland -- Vanhorn -- Sheriff office -- Bounty Board 


    if Config.Unknow == true then
        RequestImap(_________________) -- Something relating to BizTemplate
    end     
    --]] 
end

function EnableResouresINTERIORS(x, y, z)     
    --[[
    local interior = GetInteriorAtCoords(x, y, z) 
    ActivateInteriorEntitySet(interior, "_________________")       
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "_________________")         
    end   
    --]]
    local interior = GetInteriorAtCoords(x, y, z)
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_shadow")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_room_shell")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_ref_a")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_ref_b")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_misc_02")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_misc_03")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_hall_shell")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_hall_01")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_frame")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int_floor_shell")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hotel_int")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "0xD1AF2BBA")         
    end  
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "0x2F0029C1")         
    end  
    --[[  

hi@van_hotel_int.ybn
van_hotel_int+hi.ytd   
van_hotel_int_floor_shell+hidr.ytd
van_hotel_int_hall_01+hidr.ytd
van_hotel_int_hall_shell+hidr.ytd
van_hotel_int_frame+hidr.ytd
van_hotel_int_misc_02+hidr.ytd
van_hotel_int_misc_03+hidr.ytd
van_hotel_int_room_shell+hidr.ytd
    --]]
end

-- currently there are two hitching posts. 

----------- turn off the bar ------
function DisableResourcesYMAPS() 
    --[[
    RemoveImap(6666_________________17953) -- Something relating to BizTemplate  
    --]]  
end

function DisableResourcesINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)    
    DeactivateInteriorEntitySet(interior, "_________________")     
    DeactivateInteriorEntitySet(interior, "_________________")  
    --]]   
    local interior = GetInteriorAtCoords(x, y, z)
    DeactivateInteriorEntitySet(interior, "van_hotel_int_shadow")     
    DeactivateInteriorEntitySet(interior, "van_hotel_int_room_shell")  
    DeactivateInteriorEntitySet(interior, "van_hotel_int_ref_b")     
    DeactivateInteriorEntitySet(interior, "van_hotel_int_ref_a")  
    DeactivateInteriorEntitySet(interior, "van_hotel_int_misc_03")     
    DeactivateInteriorEntitySet(interior, "van_hotel_int_misc_02")  
    DeactivateInteriorEntitySet(interior, "van_hotel_int_hall_shell")     
    DeactivateInteriorEntitySet(interior, "van_hotel_int_hall_01")  
    DeactivateInteriorEntitySet(interior, "van_hotel_int_frame")     
    DeactivateInteriorEntitySet(interior, "van_hotel_int_floor_shell")  
    DeactivateInteriorEntitySet(interior, "van_hotel_int")     
    DeactivateInteriorEntitySet(interior, "0xD1AF2BBA")  
    DeactivateInteriorEntitySet(interior, "0x2F0029C1")      
    --[[
van_hotel_int_shadow.ydr
van_hotel_int_room_shell.ydr 
van_hotel_int_ref_b.ydr
van_hotel_int_ref_a.ydr
van_hotel_int_misc_03.ydr 
van_hotel_int_misc_02.ydr 
van_hotel_int_hall_shell.ydr 
van_hotel_int_hall_01.ydr 
van_hotel_int_frame.ydr 
van_hotel_int_floor_shell.ydr 
van_hotel_int.ytyp
van_hotel_int.ytd
van_hotel_int.ybn 
0xD1AF2BBA.ytd
0x2F0029C1.ytd        
    --]]    
end    
 
 
-----------------------------------------------------
---remove all on resource stop---
-----------------------------------------------------
AddEventHandler('onResourceStop', function(resource) 
    if resource == GetCurrentResourceName() then     
        -- when resource stops disable them, admin is restarting the script
        DisableResourcesYMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    end
end)

-----------------------------------------------------
--- clear all on resource start ---
-----------------------------------------------------
AddEventHandler('onResourceStart', function(resource) 
    if resource == GetCurrentResourceName() then         
        Citizen.Wait(3000)
        -- interiors loads all of these, so we need to disable them 
        DisableResourcesYMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
        Citizen.Wait(3000)        
        -- because the character is already logged in on resource "re"start
        character_selected = true
    end
end)
 

-----------------------------------------------------
-- Trigger when character is selected
-----------------------------------------------------
RegisterNetEvent("vorp:SelectedCharacter") -- NPC loads after selecting character
AddEventHandler("vorp:SelectedCharacter", function(charid) 
	character_selected = true
end)
  
-----------------------------------------------------
-- Main thread that controls the script
-----------------------------------------------------
Citizen.CreateThread(function()
    while character_selected == false do 
        Citizen.Wait(1000)
    end 
    if character_selected == true and interiorsActive == false then 
        --- cleanup any previous scripts loading content
        DisableResourcesYMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)

        -- basically run once after character has loadded in  
        EnableResouresYMAPS() 
        EnableResouresINTERIORS(Config.x, Config.y, Config.z)
        interiorsActive = true
        unlockDoors()  
    end
end)

 