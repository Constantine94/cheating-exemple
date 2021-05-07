function main()
	sampRegisterChatCommand("pi", player_informations)
	wait(-1)
end

function player_informations(playerId)

	local id_jucator = tonumber(playerId)

	if id_jucator == nil then 
		mesaj("Functia tonumber() a returnat 'nil', probabil pentru ca in loc de numar, ai pus un string '/pi 5', nu '/pi text'")
		return 0 
		-- daca vei pune un string (/pi text), odata ce codul ajunge la return 0, totul se va opri
	else
		mesaj("Pana aici totul a mers bine, ai pus un numar ca argument.")
	end
		

	if sampIsPlayerConnected(id_jucator) then -- verifica daca jucatorul e conectat

		mesaj("Jucatorul este conectat")

		local numele_playerului = sampGetPlayerNickname( id_jucator )
		mesaj("Numele jucatorul este: " .. numele_playerului) -- functia sampGetPlayerNickname() -- va returna numele jucatorului dupa ID-ul lui

		local scorul_playerului = sampGetPlayerScore( id_jucator )
		mesaj("Scorul jucatorului este: " .. tostring(scorul_playerului)) -- functia sampGetPlayerScore() -- va returna scorul jucatorului dupa ID-ul lui

	else
		mesaj("Jucatorul nu este conectat")
	end

end


function mesaj(text) -- Functie creata pentru a scuti mai putin cod de scris
	sampAddChatMessage("{ffffff}" .. text) -- #ffffff este o culoare html, ce se poate lua cu color picker de pe google
end


-- functia tonumber() daca reuseste sa converteasca un numar din string in numar
-- atunci functia tonumber() va returna numarul convertit, spre exemplu din '5' in 5, sau din '400' in 400
-- daca nu reuseste, atunci va returna `nil`, ceea ce inseamna null. Adica nimic

-- variabilele ce au in fata lor ` local `, se numesc variabile locale si sunt folosite doar in mijlocul functiilor

-- Exemplu:

-- functie exemplu()
--	local viata = 100 -- variabila viata, nu poate fi folosita decat in interiorul acestei functii
-- end
-- print(viata) -> va da crash scriptul, pentru ca variabila locala viata, este locala, si se poate folosi doar in mijlocul functie exemplu() atat.


-- Variabilele ce nu au in fata lor `local`, se numesc variabile globale si se pot folosi peste tot in scriptul tau

-- Exemplu
-- functie exemplu()
--	viata = 100 
-- end
-- print(viata) -> va printa 100 
