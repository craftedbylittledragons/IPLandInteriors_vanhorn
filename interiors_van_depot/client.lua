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
        ActivateInteriorEntitySet(interior, "van_depot_int_shadow_proxy")        
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int_shell01")      
        ActivateInteriorEntitySet(interior, "van_depot_lightbox01")     
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int_shell02")  
        ActivateInteriorEntitySet(interior, "van_depot_lightbox02")        
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int_ref_a")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int_ref_b")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int_details01")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int_decals02")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int_decals01")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int_counters")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_depot_int")         
    end      
    --[[
van_depot_int+hi.ytd    
van_depot_int_counters+hidr.ytd  
van_depot_int_decals01+hidr.ytd
van_depot_int_decals02+hidr.ytd
van_depot_int_details01+hidr.ytd
van_depot_int_shell01+hidr.ytd
van_depot_int_shell02+hidr.ytd    
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
    DeactivateInteriorEntitySet(interior, "van_depot_lightbox02")     
    DeactivateInteriorEntitySet(interior, "van_depot_lightbox01")  
    DeactivateInteriorEntitySet(interior, "van_depot_int_shell02")     
    DeactivateInteriorEntitySet(interior, "van_depot_int_shell01")  
    DeactivateInteriorEntitySet(interior, "van_depot_int_shadow_proxy")     
    DeactivateInteriorEntitySet(interior, "van_depot_int_ref_b")  
    DeactivateInteriorEntitySet(interior, "van_depot_int_ref_a")     
    DeactivateInteriorEntitySet(interior, "van_depot_int_details01")  
    DeactivateInteriorEntitySet(interior, "van_depot_int_decals02")     
    DeactivateInteriorEntitySet(interior, "van_depot_int_decals01")  
    DeactivateInteriorEntitySet(interior, "van_depot_int_counters")     
    DeactivateInteriorEntitySet(interior, "van_depot_int")    
    --[[   
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

 