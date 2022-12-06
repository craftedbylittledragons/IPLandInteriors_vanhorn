---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false 

----------- turn on the bar ------
function EnableResouresIMAP()            
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
    ActivateInteriorEntitySet(interior, "van_lighthouse_int")  
    ActivateInteriorEntitySet(interior, "van_lighthouse_int_shell")  
    ActivateInteriorEntitySet(interior, "van_lighthouse_int_shdw_prxy")  
    ActivateInteriorEntitySet(interior, "van_lighthouse_int_ref_b")  
    ActivateInteriorEntitySet(interior, "van_lighthouse_int_ref_a")  
    ActivateInteriorEntitySet(interior, "van_lighthouse_dummy001")  
    ActivateInteriorEntitySet(interior, "van_lighthouse_dummy")  
    ActivateInteriorEntitySet(interior, "van_02_spiralstairs")  
    ActivateInteriorEntitySet(interior, "van_02_lghthse_ladder")  
    ActivateInteriorEntitySet(interior, "van_02_lghthse_frames")  
    ActivateInteriorEntitySet(interior, "0x8978053C")  
    ActivateInteriorEntitySet(interior, "0x90F3C5F4")  
    --[[    
van_lighthouse_int+hi.ytd
van_02_lghthse_ladder+hidr.ytd
hi@van_lighthouse_int.ybn
    --]]
end

-- currently there are two hitching posts. 

----------- turn off the bar ------
function DisableResourcesIMAPS() 
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
    DeactivateInteriorEntitySet(interior, "van_lighthouse_int")     
    DeactivateInteriorEntitySet(interior, "van_lighthouse_int_shell")     
    DeactivateInteriorEntitySet(interior, "van_lighthouse_int_shdw_prxy")  
    DeactivateInteriorEntitySet(interior, "van_lighthouse_int_ref_b")     
    DeactivateInteriorEntitySet(interior, "van_lighthouse_int_ref_a")   
    DeactivateInteriorEntitySet(interior, "van_lighthouse_dummy001")  
    DeactivateInteriorEntitySet(interior, "van_lighthouse_dummy")     
    DeactivateInteriorEntitySet(interior, "van_02_spiralstairs")  
    DeactivateInteriorEntitySet(interior, "van_02_lghthse_ladder")     
    DeactivateInteriorEntitySet(interior, "van_02_lghthse_frames")      
    DeactivateInteriorEntitySet(interior, "0x8978053C")      
    DeactivateInteriorEntitySet(interior, "0x90F3C5F4")   
    --[[
           
    --]]
end    
 
 
-----------------------------------------------------
---remove all on resource stop---
-----------------------------------------------------
AddEventHandler('onResourceStop', function(resource) 
    if resource == GetCurrentResourceName() then     
        -- when resource stops disable them, admin is restarting the script
        DisableResourcesIMAPS() 
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
        DisableResourcesIMAPS() 
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
        DisableResourcesIMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)

        -- basically run once after character has loadded in  
        EnableResouresIMAP() 
        EnableResouresINTERIORS(Config.x, Config.y, Config.z)
        interiorsActive = true
        unlockDoors()  
    end
end)

 