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
    if Config.Bedroom == true then   
        ActivateInteriorEntitySet(interior, "van_bedrm_detail01")   
        ActivateInteriorEntitySet(interior, "van_bedrm_decal02")   
        ActivateInteriorEntitySet(interior, "van_room_int_bedrm_shell")         
    end   
    if Config.Bath == true then  
        ActivateInteriorEntitySet(interior, "van_bath_detail")  
        ActivateInteriorEntitySet(interior, "van_bath_decal01")    
        ActivateInteriorEntitySet(interior, "van_room_int_bath_shell")      
        ActivateInteriorEntitySet(interior, "van_room_n_bath_shadow")         
    end    

    if Config.Bath == true then    
        ActivateInteriorEntitySet(interior, "van_roomnbath_ligthbox001") 
        ActivateInteriorEntitySet(interior, "van_roomnbath_lightbox") 
        ActivateInteriorEntitySet(interior, "van_roomnbath_ref")  
        ActivateInteriorEntitySet(interior, "van_roomnbath_int_shell")
        ActivateInteriorEntitySet(interior, "van_roomnbath_int")        
    end                                                           
    --[[       
hi@van_roomnbath_int.ybn

van_roomnbath_ref+hidr.ytd
van_roomnbath_int_shell+hi.ytd
van_roomnbath_int+hi.ytd
van_bedrm_detail01+hidr.ytd
van_bedrm_decal02+hidr.ytd
van_bath_detail+hidr.ytd
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
    DeactivateInteriorEntitySet(interior, "van_bedrm_detail01")   
    DeactivateInteriorEntitySet(interior, "van_bedrm_decal02")   
    DeactivateInteriorEntitySet(interior, "van_room_int_bedrm_shell")         
    DeactivateInteriorEntitySet(interior, "van_bath_detail")  
    DeactivateInteriorEntitySet(interior, "van_bath_decal01")    
    DeactivateInteriorEntitySet(interior, "van_room_int_bath_shell")      
    DeactivateInteriorEntitySet(interior, "van_room_n_bath_shadow")          
    DeactivateInteriorEntitySet(interior, "van_roomnbath_ligthbox001") 
    DeactivateInteriorEntitySet(interior, "van_roomnbath_lightbox") 
    DeactivateInteriorEntitySet(interior, "van_roomnbath_ref")  
    DeactivateInteriorEntitySet(interior, "van_roomnbath_int_shell")
    DeactivateInteriorEntitySet(interior, "van_roomnbath_int")           
    --[[
van_room_n_bath_shadow.ydr
van_room_int_bedrm_shell.ydr
van_room_int_bath_shell.ydr
van_roomnbath_ref.ydr
van_roomnbath_ref+hidr.ytd
van_roomnbath_ligthbox001.ydr
van_roomnbath_lightbox.ydr
van_roomnbath_int_shell.ytd
van_roomnbath_int_shell+hi.ytd
van_roomnbath_int.ytyp
van_roomnbath_int.ytd
van_roomnbath_int.ybn
van_roomnbath_int+hi.ytd
van_bedrm_detail01.ydr
van_bedrm_detail01+hidr.ytd
van_bedrm_decal02.ydr
van_bedrm_decal02+hidr.ytd
van_bath_detail.ydr
van_bath_detail+hidr.ytd
van_bath_decal01.ydr
hi@van_roomnbath_int.ybn
        
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

 