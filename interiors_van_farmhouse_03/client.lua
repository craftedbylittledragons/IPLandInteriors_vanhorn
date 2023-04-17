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
    ActivateInteriorEntitySet(interior, "van_farmhse01_int")
    ActivateInteriorEntitySet(interior, "van_farmhse01_int_shell")  
    if Config.FarmHouse == true then   
        ActivateInteriorEntitySet(interior, "van_farmhse_lights")    
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_lights01")   
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_win_frames")   
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_windows")  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_floor")  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_firepl")  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_rafters")        
    end          
    if Config.Wires == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_wires")         
    end        
    if Config.Stand == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_stand")         
    end       
    if Config.Shelves == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_shelves")         
    end       
    if Config.Prop1 == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_prop1")         
    end       
    if Config.Prop2 == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_prop2")         
    end       
    if Config.Prop3 == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_prop3")         
    end      
    if Config.Parts == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_parts")         
    end        
    if Config.Details == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_dtls00")  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_dtls01") 
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_dtls02") 
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_dtls03")          
    end     
    if Config.Decal == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_decal01")  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_decal02")          
    end           
    if Config.Trolley == true then  
        ActivateInteriorEntitySet(interior, "van_farmhse01_int_trolley_01")         
    end       
    if Config.Shadows == true then  
        ActivateInteriorEntitySet(interior, "van_farmhouse_int_ref_proxy")  
        ActivateInteriorEntitySet(interior, "van_farmhouse_shadowpoly")    
        ActivateInteriorEntitySet(interior, "van_shadow_proxy")      
    end      

    if Config.LabAnimals == true then  
        ActivateInteriorEntitySet(interior, "van_lab_animals")         
    end      
    if Config.Monster == true then  
        ActivateInteriorEntitySet(interior, "van_03_farmhse_int_winglass")                 
        ActivateInteriorEntitySet(interior, "van_03_monster_pulley")
        ActivateInteriorEntitySet(interior, "van_03_monster")         
    end    
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
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int")     
    DeactivateInteriorEntitySet(interior, "van_farmhse_lights") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_wires")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_win_frames") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_windows")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_trolley_01") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_stand")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_shelves") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_shell")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_rafters") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_prop3")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_prop2") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_prop1")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_parts") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_lights01")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_floor") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_firepl")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_dtls03") 
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_dtls02")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_dtls01")  
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_dtls00")     
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_decal02")  
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_decal01")     
    DeactivateInteriorEntitySet(interior, "van_farmhouse_int_ref_proxy")  
    DeactivateInteriorEntitySet(interior, "van_03_farmhse_int_winglass")     
    DeactivateInteriorEntitySet(interior, "van_farmhouse_shadowpoly")
    DeactivateInteriorEntitySet(interior, "van_shadow_proxy")     
    DeactivateInteriorEntitySet(interior, "van_lab_animals")
    DeactivateInteriorEntitySet(interior, "van_03_monster_pulley")     
    DeactivateInteriorEntitySet(interior, "van_03_monster")   
    DeactivateInteriorEntitySet(interior, "van_03_farmhse_int_winglass+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_03_monster+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhouse_int_ref_proxy+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int+hi.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_decal01+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_decal02+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_dtls02+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_firepl+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_floor+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_parts+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_prop1+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_prop3+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_shell+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_shelves+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_win_frames+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_stand+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_windows+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_lab_animals+hidr.ytd")
    DeactivateInteriorEntitySet(interior, "van_farmhse01_int_wires+hidr.ytd")

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


    local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

    local interiorId = GetInteriorFromEntity(playerPed)    
    if interiorId ~= 0 then    
      local x, y, z = GetInteriorPosition(interiorId)    
      print("current interior " .. interiorId .. " position is: " .. vec(x, y, z))    
    end    
    
    if interiorId ~= 0 then
        local count = GetInteriorRoomCount(interiorId)      
        print("interior " .. interiorId .. "has " .. count .. " rooms")      
    end    

    GetRoomKeyFromEntity(playerPed)
    local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)    
    if roomId ~= -1 then    
      print("current room index is: " .. roomId)    
    end 

    local interiorId --[[ Interior ]] =	GetInteriorAtCoords( coords.x --[[ number ]], coords.y --[[ number ]], coords.z --[[ number ]])
    if interiorId ~= 0 then  
        print("current interior " .. interiorId .. " position is: " .. vec(coords.x, coords.y, coords.z))    
    end 
        
end)

 