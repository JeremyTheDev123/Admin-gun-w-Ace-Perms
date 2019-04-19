AddEventHandler('chatMessage', function(source, n, msg)
	local command = string.lower(msg)
	if command == "/admingun" then
		CancelEvent()
		if IsPlayerAceAllowed(source, "jeremys.admin") then
			TriggerClientEvent('admin_gun_on', source)
		else
				TriggerClientEvent('no_perms', source)
			end
		end

	if command == "/admingun off" then
		CancelEvent()
		TriggerClientEvent('admin_gun_off', source)
	end
end)