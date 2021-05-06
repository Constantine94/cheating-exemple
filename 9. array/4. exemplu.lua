
-- array-urile sunt niste structuri ce contin tot felul de date, numere, stringuri, etc
-- gandeste un array ca un cos cu diverse lucruri in el, mere, pere, nuci sau orice alte obiecte, lucruri etc

function main()
	
	-- Exemplu 1
	
	array_cu_nume = {'Mihaita', 'Viorel', 'Sandu', 'Dorel'} -- un array cu nume

	-- incepe de la 1, si se termina la 4, pentru ca # numara cate instante (nume) ai in array 
	for numar = 1, #array_cu_nume do
		print("Numele este: ", array_cu_nume[numar]) -- numar e inlocuit cu 1, 2, 3, 4 
	end

end

-- Asta iti va printa tie in consola din sampfuncs
-- Numele este:   Mihaita
-- Numele este:   Viorel
-- Numele este:   Sandu
-- Numele este:   Dorel

