
function log(message)
	sampAddChatMessage("{00ff00}HP: " .. tostring(message))
end

function main()
	
	-- daca samp-ul nu e incarcat si nici sampfuncs-ul, atunci nu va executa nimic
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	sampRegisterChatCommand("hp", verifica_hp)
	wait(-1)
end

function verifica_hp(playerID)
	local player_health = sampGetPlayerHealth(tonumber(playerID))
	print(player_health)
	if player_health == 0 then
		log("Player-ul nu se afla in raza ta")
		return 0 -- eu returnez 0 cand e false, si 1 cand e adevarat
		-- tu poti returna ce vrei tu
		-- alti useri returneaza true sau false, altii stringuri gen
		-- return "nu merge" etc
	else
		log(player_health)
	end
end


-- sampGetPlayerHealth(id-ul playerului)
	-- daca player-ul nu e conectat sau nu e raza ta, atunci functia iti va returna 0
	-- daca player-ul e in raza ta si e conectat, va returna viata lui
