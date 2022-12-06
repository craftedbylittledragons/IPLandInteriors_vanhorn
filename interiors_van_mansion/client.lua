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
    if Config.Mansion == true then  
        ActivateInteriorEntitySet(interior, "van_mansion_int") 
        ActivateInteriorEntitySet(interior, "van_man_int_shell")    
        ActivateInteriorEntitySet(interior, "van_man_int_stairs")   
        ActivateInteriorEntitySet(interior, "van_man_int_floors")  
        ActivateInteriorEntitySet(interior, "van_man_int_fireplace")  
        ActivateInteriorEntitySet(interior, "van_man_int_beams")  
        ActivateInteriorEntitySet(interior, "van_mansion_int_fp_lights")          
    end    

    if Config.Trash == true then  
        ActivateInteriorEntitySet(interior, "van_man_int_trash01")  
        ActivateInteriorEntitySet(interior, "van_man_int_trash02")    
    else 
        DeactivateInteriorEntitySet(interior, "van_man_int_trash02")     
        DeactivateInteriorEntitySet(interior, "van_man_int_trash01") 
    end    

    if Config.Detail == true then  
        ActivateInteriorEntitySet(interior, "van_man_int_detail1f")     
        ActivateInteriorEntitySet(interior, "van_man_int_detail2f")    
    else         
        DeactivateInteriorEntitySet(interior, "van_man_int_detail2f")  
        DeactivateInteriorEntitySet(interior, "van_man_int_detail1f")  
    end    

    if Config.Decals == true then  
        ActivateInteriorEntitySet(interior, "van_man_int_decals_01")  
        ActivateInteriorEntitySet(interior, "van_man_int_decals_02")   
    else            
        DeactivateInteriorEntitySet(interior, "van_man_int_decals_02")  
        DeactivateInteriorEntitySet(interior, "van_man_int_decals_01")      
    end 

    if Config.LH == true then  
        ActivateInteriorEntitySet(interior, "van_man_int_lh1") 
        ActivateInteriorEntitySet(interior, "van_man_int_lh2")          
    end  

    if Config.Trim == true then  
        ActivateInteriorEntitySet(interior, "van_man_int_trim1") 
        ActivateInteriorEntitySet(interior, "van_man_int_trim2")        
    end            
    --[[        
van_man_int_stairs+hidr.ytd
van_man_int_shell+hidr.ytd 
van_man_int_shadow_proxy.ydr
van_man_int_floors+hidr.ytd
van_man_int_fireplace+hidr.ytd
van_man_int_detail2f+hidr.ytd
van_man_int_detail1f+hidr.ytd
van_man_int_decals_02+hidr.ytd
van_man_int_decals_01+hidr.ytd
van_mansion_int+hi.ytd 
van_man_int_trim2+hidr.ytd
hi@van_mansion_int.ybn  
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
    DeactivateInteriorEntitySet(interior, "van_man_int_trim2")     
    DeactivateInteriorEntitySet(interior, "van_man_int_trim1")  
    DeactivateInteriorEntitySet(interior, "van_man_int_trash02")     
    DeactivateInteriorEntitySet(interior, "van_man_int_trash01")  
    DeactivateInteriorEntitySet(interior, "van_man_int_stairs")     
    DeactivateInteriorEntitySet(interior, "van_man_int_shell")  
    DeactivateInteriorEntitySet(interior, "van_man_int_shadow_proxy")     
    DeactivateInteriorEntitySet(interior, "van_man_int_lh2")  
    DeactivateInteriorEntitySet(interior, "van_man_int_lh1")     
    DeactivateInteriorEntitySet(interior, "van_man_int_floors")  
    DeactivateInteriorEntitySet(interior, "van_man_int_fireplace")     
    DeactivateInteriorEntitySet(interior, "van_man_int_detail2f")  
    DeactivateInteriorEntitySet(interior, "van_man_int_detail1f")     
    DeactivateInteriorEntitySet(interior, "van_man_int_decals_02")  
    DeactivateInteriorEntitySet(interior, "van_man_int_decals_01")     
    DeactivateInteriorEntitySet(interior, "van_man_int_beams")  
    DeactivateInteriorEntitySet(interior, "van_mansion_int_fp_lights")     
    DeactivateInteriorEntitySet(interior, "van_mansion_int") 
    --[[          
        
    
van_man_int_stairs+hidr.ytd
van_man_int_shell+hidr.ytd 
van_man_int_shadow_proxy.ydr
van_man_int_floors+hidr.ytd
van_man_int_fireplace+hidr.ytd
van_man_int_detail2f+hidr.ytd
van_man_int_detail1f+hidr.ytd
van_man_int_decals_02+hidr.ytd
van_man_int_decals_01+hidr.ytd
van_mansion_int+hi.ytd 
van_man_int_trim2+hidr.ytd
hi@van_mansion_int.ybn  

    --]]      
    DeactivateInteriorEntitySet(interior, "van_man_int_stairs+hidr")     
    DeactivateInteriorEntitySet(interior, "van_man_int_shell+hidr")  
    DeactivateInteriorEntitySet(interior, "van_man_int_shadow_proxy")     
    DeactivateInteriorEntitySet(interior, "van_man_int_floors+hidr")  
    DeactivateInteriorEntitySet(interior, "van_man_int_fireplace+hidr")     
    DeactivateInteriorEntitySet(interior, "van_man_int_detail2f+hidr")  
    DeactivateInteriorEntitySet(interior, "van_man_int_detail1f+hidr")     
    DeactivateInteriorEntitySet(interior, "van_man_int_decals_02+hidr")  
    DeactivateInteriorEntitySet(interior, "van_man_int_decals_01+hidr")     
    DeactivateInteriorEntitySet(interior, "van_mansion_int+hi") 
    DeactivateInteriorEntitySet(interior, "hi@van_mansion_int") 
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

 