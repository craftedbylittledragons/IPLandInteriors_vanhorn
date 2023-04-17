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
    if Config.Curtain == true then  
        ActivateInteriorEntitySet(interior, "van_int_curtain01")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_decals")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_ex_int_shelves004")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_ex_int_rafters006")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_ex_int_hooks001")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_ex_int_genstore_furs")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_ex_int_details")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_ext_doorcatjak_01x")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exo_int_shell")         
    end
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exotic_lightdummy_03")         
    end 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exotic_lightdummy_01")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exoticgoods_shadow_proxy")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exoticgoods_int_upper_ref")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exoticgoods_int_txd")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exoticgoods_int_shell")         
    end   
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exoticgoods_int_ref")         
    end        
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_exoticgoods_int")         
    end         
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "p_group_n_grocery001")         
    end   
    --[[      

hi@van_exoticgoods_int.ybn 
p_group_n_grocery001+hidr.ytd  
van_exoticgoods_int_ref+hi.ytd  
van_exoticgoods_int_txd+hi.ytd   
van_exo_int_shell+hidr.ytd
van_ext_doorcatjak_01x+hidr.ytd
van_ex_int_details+hidr.ytd
van_ex_int_genstore_furs+hidr.ytd
van_ex_int_rafters006+hidr.ytd
van_ex_int_shelves004+hidr.ytd
van_horn_decals+hidr.ytd
van_int_curtain01+hidr.ytd
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
    DeactivateInteriorEntitySet(interior, "van_int_curtain01")     
    DeactivateInteriorEntitySet(interior, "van_horn_decals")  
    DeactivateInteriorEntitySet(interior, "van_ex_int_shelves004")     
    DeactivateInteriorEntitySet(interior, "van_ex_int_rafters006")  
    DeactivateInteriorEntitySet(interior, "van_ex_int_hooks001")     
    DeactivateInteriorEntitySet(interior, "van_ex_int_genstore_furs")  
    DeactivateInteriorEntitySet(interior, "van_ex_int_details")     
    DeactivateInteriorEntitySet(interior, "van_ext_doorcatjak_01x")  
    DeactivateInteriorEntitySet(interior, "van_exo_int_shell")     
    DeactivateInteriorEntitySet(interior, "van_exotic_lightdummy_03")  
    DeactivateInteriorEntitySet(interior, "van_exotic_lightdummy_01")     
    DeactivateInteriorEntitySet(interior, "van_exoticgoods_shadow_proxy")  
    DeactivateInteriorEntitySet(interior, "van_exoticgoods_int_upper_ref")     
    DeactivateInteriorEntitySet(interior, "van_exoticgoods_int_txd")  
    DeactivateInteriorEntitySet(interior, "van_exoticgoods_int_shell")     
    DeactivateInteriorEntitySet(interior, "van_exoticgoods_int_ref")  
    DeactivateInteriorEntitySet(interior, "van_exoticgoods_int")  
    DeactivateInteriorEntitySet(interior, "p_group_n_grocery001")   
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

 