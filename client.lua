RegisterNetEvent('admin_gun_on')
RegisterNetEvent('admin_gun_off')
RegisterNetEvent('no_perms')

local admin_gun = false
AddEventHandler('admin_gun_on', function()
	if admin_gun == false then
		drawNotification("~r~Admin Gun Gun Enabled!")
		admin_gun = true
	else
		drawNotification('~r~Admin Gun Gun is already enabled!')
	end
end)
AddEventHandler('admin_gun_off', function()
	if admin_gun == true then
		drawNotification('~r~Admin Gun Gun Disabled!')
		admin_gun = false
	else
		drawNotification('~w~Admin Gun Gun is already disabled!')
	end
end)
AddEventHandler('no_perms', function()
	drawNotification("~r~You are not an admin!")
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if admin_gun then
			if IsPlayerFreeAiming(PlayerId()) then
				local entity = getEntity(PlayerId())
				if IsPedShooting(GetPlayerPed(-1)) then
					SetEntityAsMissionEntity(entity, true, true)
					DeleteEntity(entity)
				end
			end
		end
	end
end)
function getEntity(player)
	local result, entity = GetEntityPlayerIsFreeAimingAt(player)
	return entity
end

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end