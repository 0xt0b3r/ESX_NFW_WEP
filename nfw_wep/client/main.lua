ESX = nil
local IsDead = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('playerSpawned', function()
    used = 0
    used2 = 0
    used3 = 0
    used4 = 0
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

local used = 0

RegisterNetEvent('nfw_wep:silencieux')
AddEventHandler('nfw_wep:silencieux', function(duration)
    local inventory = ESX.GetPlayerData().inventory
    local silencieux = 0
    
    for i=1, #inventory, 1 do
        if inventory[i].name == 'silencieux' then
            silencieux = inventory[i].count
        end
    end

    local ped = PlayerPedId()
    local WepHash = GetSelectedPedWeapon(ped)

    if WepHash == GetHashKey("WEAPON_PISTOL") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("component_at_pi_supp_02"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_PISTOL50") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
   
    elseif WepHash == GetHashKey("WEAPON_COMBATPISTOL") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    elseif WepHash == GetHashKey("WEAPON_APPISTOL") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_HEAVYPISTOL") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_SMG") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_PI_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_MICROSMG") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_ASSAULTSMG") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ATCOMPONENT_AT_AR_SUPP_02_PI_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_CARBINERIFLE") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
   
    elseif WepHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
   
    elseif WepHash == GetHashKey("WEAPON_SPECIALCARBINE") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_SR_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    
    elseif WepHash == GetHashKey("WEAPON_SNIPERRIFLE") then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
        exports['mythic_notify']:DoHudText('inform', 'You have equipped a silencer!')
        used = used + 1
    else
        exports['mythic_notify']:DoHudText('inform', 'You have used all your silencers')
    end
end)

local used2 = 0

RegisterNetEvent('nfw_wep:flashlight')
AddEventHandler('nfw_wep:flashlight', function(duration)                    
    local inventory = ESX.GetPlayerData().inventory
	local flashlight = 0
    
    for i=1, #inventory, 1 do
		if inventory[i].name == 'flashlight' then
			flashlight = inventory[i].count
		end
	end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
        
    if used2 < flashlight then
		print('used2')

		if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
		  	exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!') 
		  	used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
			GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
	  		GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		    GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		    GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		    GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')         
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a flashlight!')	        
            used2 = used2 + 1
		else 
            exports['mythic_notify']:DoHudText('inform', 'You do not have a weapon in hand that can equip a flashlight')	 
		end
	else
		exports['mythic_notify']:DoHudText('inform', 'You have used all your flashlights')	 
	end
end)

local used3 = 0

RegisterNetEvent('nfw_wep:grip')
AddEventHandler('nfw_wep:grip', function(duration)
    local inventory = ESX.GetPlayerData().inventory
    local grip = 0

    for i=1, #inventory, 1 do
        if inventory[i].name == 'grip' then
            grip = inventory[i].count
        end
    end

    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    if used3 < grip then
        if currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
       
        elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
       
        elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            exports['mythic_notify']:DoHudText('inform', 'You have equipped a grip!')
            used3 = used3 + 1
        else
            exports['mythic_notify']:DoHudText('inform', 'You do not have a wepaon in hand that is compatible with a grip')
        end
    else
        exports['mythic_notify']:DoHudText('inform', 'You have used all your grip!')
    end
end)

RegisterNetEvent('nfw_wep:yusuf')
AddEventHandler('nfw_wep:yusuf', function(duration)
    local inventory = ESX.GetPlayerData().inventory
    local yusuf = 0
    for i=1, #inventory, 1 do
        if inventory[i].name == 'yusuf' then
            yusuf = inventory[i].count
        end
    end

    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    if used4 < yusuf then

        if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1
        
        elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1

        elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1

        elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1

        elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1

        elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1

        elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1

        elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1

        elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"))
            exports['mythic_notify']:DoHudText('inform', 'You have applied a Luxury Weapon Skin')
            used4 = used4 + 1
        else
            exports['mythic_notify']:DoHudText('inform', 'You do not have a wepaon in hand that is compatible with a skin')
        end
    else
        exports['mythic_notify']:DoHudText('inform', 'You have used all your weapon skins')
    end
end)

RegisterNetEvent('nfw_wep:SmallArmor')
AddEventHandler('nfw_wep:SmallArmor', function()
    local inventory = ESX.GetPlayerData().inventory
    local ped = GetPlayerPed(-1)
    local armor = GetPedArmour(ped)
    local item = 'SmallArmor'

    if(armor >= 100) or (armor+30 > 100) then
        exports['mythic_notify']:DoHudText('inform', 'Your armor is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    TriggerEvent('mythic_progbar:client:progress', {
        name = 'smallb_armor',
        duration = 5000,
        label = 'Applying Light Body Armor...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "rcmfanatic3",
            anim = "kneel_idle_a",
        },
        prop = {
            model = "prop_bodyarmour_02",
        }
    }, function(status)
        if not status then
            SetPedComponentVariation(ped, 9, 10, 0, 0)
            AddArmourToPed(ped, 30)
            exports['mythic_notify']:DoHudText('inform', 'You have put on Light Body Armor.')
        end
    end)
end)

RegisterNetEvent('nfw_wep:MedArmor')
AddEventHandler('nfw_wep:MedArmor', function()
    local inventory = ESX.GetPlayerData().inventory
    local ped = GetPlayerPed(-1)
    local armor = GetPedArmour(ped)
    local item = 'MedArmor'

    if(armor >= 100) or (armor+30 > 100) then
        exports['mythic_notify']:DoHudText('inform', 'Your armor is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    TriggerEvent('mythic_progbar:client:progress', {
        name = 'medb_armor',
        duration = 10000,
        label = 'Applying Medium Body Armor...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "rcmfanatic3",
            anim = "kneel_idle_a",
        },
        prop = {
            model = "prop_bodyarmour_02",
        }
    }, function(status)
        if not status then
            SetPedComponentVariation(ped, 9, 10, 0, 0)
            AddArmourToPed(ped, 60)
            exports['mythic_notify']:DoHudText('inform', 'You have put on Medium Body Armor.')
        end
    end)
end)

RegisterNetEvent('nfw_wep:HeavyArmor')
AddEventHandler('nfw_wep:HeavyArmor', function()
    local inventory = ESX.GetPlayerData().inventory
    local ped = GetPlayerPed(-1)
    local armor = GetPedArmour(ped)
    local item = 'HeavyArmor'

    if(armor >= 100) or (armor+30 > 100) then
        exports['mythic_notify']:DoHudText('inform', 'Your armor is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    TriggerEvent('mythic_progbar:client:progress', {
        name = 'heavyb_armor',
        duration = 15000,
        label = 'Applying Heavy Body Armor...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "rcmfanatic3",
            anim = "kneel_idle_a",
        },
        prop = {
            model = "prop_bodyarmour_02",
        }
    }, function(status)
        if not status then
            SetPedComponentVariation(ped, 9, 10, 0, 0)
            AddArmourToPed(ped, 100)
            exports['mythic_notify']:DoHudText('inform', 'You have put on Heavy Body Armor.')
        end
    end)
end)

RegisterNetEvent('nfw_wep:pAmmo')
AddEventHandler('nfw_wep:pAmmo', function()
    local ped = GetPlayerPed(-1)
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    local ammo = GetAmmoInPedWeapon(ped, currentWeaponHash)
    local item = "pAmmo"

    if(ammo >= 250 or ammo + 50 > 250) then
        exports['mythic_notify']:DoHudText('inform', 'Your weapon ammo is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_REVOLVER") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
    else
        exports['mythic_notify']:DoHudText('inform', 'This weapon is not compatible with this ammo')
        TriggerServerEvent('returnItem', item)
    end
end)

RegisterNetEvent('nfw_wep:mgAmmo')
AddEventHandler('nfw_wep:mgAmmo', function()
    local ped = GetPlayerPed(-1)
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    local ammo = GetAmmoInPedWeapon(ped, currentWeaponHash)
    local item = "mgAmmo"

    if(ammo >= 250 or ammo + 50 > 250) then
        exports['mythic_notify']:DoHudText('inform', 'Your weapon ammo is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    if currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_MACHINEPISTOL") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_MG") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_COMBATMG") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_GUSENBERG") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_MINISMG") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
    else
        exports['mythic_notify']:DoHudText('inform', 'This weapon is not compatible with this ammo')
        TriggerServerEvent('returnItem', item)
    end
end)

RegisterNetEvent('nfw_wep:arAmmo')
AddEventHandler('nfw_wep:arAmmo', function()
    local ped = GetPlayerPed(-1)
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    local ammo = GetAmmoInPedWeapon(ped, currentWeaponHash)
    local item = "arAmmo"

    if(ammo >= 250 or ammo + 50 > 250) then
        exports['mythic_notify']:DoHudText('inform', 'Your weapon ammo is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    if currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Assault Rifle ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Assault Rifle ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Assault Rifle ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Assault Rifle ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Assault Rifle ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_COMPACTRIFLE") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Assault Rifle ammo')
    else
        exports['mythic_notify']:DoHudText('inform', 'This weapon is not compatible with this ammo')
        TriggerServerEvent('returnItem', item)
    end
end)

RegisterNetEvent('nfw_wep:sgAmmo')
AddEventHandler('nfw_wep:sgAmmo', function()
    local ped = GetPlayerPed(-1)
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    local ammo = GetAmmoInPedWeapon(ped, currentWeaponHash)
    local item = "sgAmmo"

    if(ammo >= 250 or ammo + 50 > 250) then
        exports['mythic_notify']:DoHudText('inform', 'Your weapon ammo is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    if currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_SAWNOFFSHOTGUN") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_MUSKET") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_DOUBLEBARRELSHOTGUN") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
    elseif currentWeaponHash == GetHashKey("WEAPON_AUTOSHOTGUN") then
        AddAmmoToPed(ped, currentWeaponHash, 50)
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
    else
        exports['mythic_notify']:DoHudText('inform', 'This weapon is not compatible with this ammo')
        TriggerServerEvent('returnItem', item)
    end
end)