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
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_sal_int_shell")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_sal_int_shadow_proxy")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_sal_int_detailsback")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_sal_int_details")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_sal_int_blackjack01")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_saloon_shell_decals")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_saloon_lightbox_002")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_saloon_lightbox_001")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_saloon_int_shell")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_saloon_int_ref")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_saloon_int")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_saloon_decals_003")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_decals_back")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "platecustom")         
    end   
    --[[   
hi@van_saloon_int.ybn

van_sal_int_shell+hidr.ytd
van_sal_int_detailsback+hidr.ytd
van_sal_int_details+hidr.ytd
van_sal_int_blackjack01+hidr.ytd
van_saloon_shell_decals+hidr.ytd
van_saloon_int_ref+hidr.ytd
van_saloon_int+hi.ytd
van_saloon_decals_003+hidr.ytd
van_decals_back+hidr.ytd
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
    DeactivateInteriorEntitySet(interior, "van_sal_int_shell")     
    DeactivateInteriorEntitySet(interior, "van_sal_int_shadow_proxy")  
    DeactivateInteriorEntitySet(interior, "van_sal_int_detailsback")     
    DeactivateInteriorEntitySet(interior, "van_sal_int_details")  
    DeactivateInteriorEntitySet(interior, "van_sal_int_blackjack01")     
    DeactivateInteriorEntitySet(interior, "van_saloon_shell_decals")  
    DeactivateInteriorEntitySet(interior, "van_saloon_lightbox_002")     
    DeactivateInteriorEntitySet(interior, "van_saloon_lightbox_001")  
    DeactivateInteriorEntitySet(interior, "van_saloon_int_shell")     
    DeactivateInteriorEntitySet(interior, "van_saloon_int_ref")  
    DeactivateInteriorEntitySet(interior, "van_saloon_int")     
    DeactivateInteriorEntitySet(interior, "van_saloon_decals_003")  
    DeactivateInteriorEntitySet(interior, "van_decals_back")     
    DeactivateInteriorEntitySet(interior, "platecustom")  
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

 