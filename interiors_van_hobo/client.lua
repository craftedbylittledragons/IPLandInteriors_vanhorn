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
        ActivateInteriorEntitySet(interior, "van_hobo_int")         
    end   
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hobo_int_ref")         
    end   
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hobo_int_shadow_proxy")         
    end   
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hobo_int_shell")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hobo_lightboxbottom")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_hobo_lightboxupper")         
    end   

    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_cell_debris")         
    end  

    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_debris03")         
    end  

    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_rubble01")         
    end  

    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_01")         
    end  

    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_02")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_03")         
    end  

 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_04")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_05")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_06")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_2f01")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_02")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_03")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_04")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_05")         
    end  
 
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_06")         
    end   

--[[   unused items at this time
van_horn_ruin_rubble01+hidr.ytd
van_horn_ruin_debris03+hidr.ytd
van_horn_ruin_cell_debris+hidr.ytd 
van_hobo_int_shell.ytd 
van_hobo_int_shell+hidr.ytd 
van_hobo_int_ref+hidr.ytd 
van_hobo_int.ytd 
van_hobo_int+hi.ytd

van_hobo_int.ybn
hi@van_hobo_int.ybn  

van_hobo_int.ytyp 
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
    DeactivateInteriorEntitySet(interior, "van_hobo_int")      
    DeactivateInteriorEntitySet(interior, "van_hobo_int_ref")     
    DeactivateInteriorEntitySet(interior, "van_hobo_int_shadow_proxy")        
    DeactivateInteriorEntitySet(interior, "van_hobo_int_shell")         
    DeactivateInteriorEntitySet(interior, "van_hobo_lightboxbottom")   
    DeactivateInteriorEntitySet(interior, "van_hobo_lightboxupper")        
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_cell_debris")      
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_debris03")    
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_rubble01")      
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_01")      
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_02")   
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_03")       
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_04")   
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_05")     
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_1f_06")      
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_2f01")   
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_02")      
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_03")     
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_04")       
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_05")      
    DeactivateInteriorEntitySet(interior, "van_horn_ruin_web_2f_06")   

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

 