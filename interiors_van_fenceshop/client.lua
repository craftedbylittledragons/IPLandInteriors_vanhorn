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
    ActivateInteriorEntitySet(interior, "van_fenceshop_int") 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_shell")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_shadow_proxy")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_rope")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_ref_proxy")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_prop01")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_planks")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_floor")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_decal01")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_fence_int_beams")         
    end   
    --[[ 
    van_fenceshop_int_shell.ytd 
    van_fenceshop_int.ytd 
   
    van_fenceshop_int.ytyp

    van_fence_int_shell+hidr.ytd 
    van_fence_int_ref_proxy+hidr.ytd
    van_fence_int_prop01+hidr.ytd
    van_fence_int_decal01+hidr.ytd
    van_fence_int_floor+hidr.ytd
    van_fence_int_planks+hidr.ytd
    van_fence_int_beams+hidr.ytd
    van_fence_int_rope+hidr.ytd
    
    hi@van_fenceshop_int.ybn  
    van_fenceshop_int.ybn  
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
    DeactivateInteriorEntitySet(interior, "van_fence_int_shell")   
    DeactivateInteriorEntitySet(interior, "van_fence_int_shadow_proxy")   
    DeactivateInteriorEntitySet(interior, "van_fence_int_rope")   
    DeactivateInteriorEntitySet(interior, "van_fence_int_ref_proxy")   
    DeactivateInteriorEntitySet(interior, "van_fence_int_prop01")   
    DeactivateInteriorEntitySet(interior, "van_fence_int_planks")   
    DeactivateInteriorEntitySet(interior, "van_fence_int_floor")   
    DeactivateInteriorEntitySet(interior, "van_fence_int_decal01")  
    DeactivateInteriorEntitySet(interior, "van_fence_int_beams")    
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

 