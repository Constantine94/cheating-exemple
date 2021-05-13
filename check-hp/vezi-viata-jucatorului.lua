
--      __    _ __              __       
--     / /   (_) /_  ___  _____/ /___  __
--    / /   / / __ \/ _ \/ ___/ __/ / / /
--   / /___/ / /_/ /  __/ /  / /_/ /_/ / 
--  /_____/_/_.___/\___/_/   \__/\__, /  
--      Familia_Gradinaru       /____/   

script_name('Check-HP | Vezi viata jucatorilor din jurul tau')
script_description('Discord: https://discord.gg/KuCRAvHvtQ')

function log(message)
	sampAddChatMessage("{00ff00}HP: " .. tostring(message))
end

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	sampRegisterChatCommand("hp", verifica_hp)
	wait(-1)
end

function verifica_hp(playerID)
	local player_health = sampGetPlayerHealth(tonumber(playerID))
	print(player_health)
	if player_health == 0 then
		log("Player-ul nu se afla in raza ta")
		return 1
	else
		log(player_health)
	end
end



