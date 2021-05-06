
-- array-urile sunt niste structuri ce contin tot felul de date, numere, stringuri, etc
-- gandeste un array ca un cos cu diverse lucruri in el, mere, pere, nuci sau orice alte obiecte, lucruri etc



function main()
	
	-- Exemplu 1
	
	array_cu_nume = {'Mihaita', 'Viorel', 'Sandu', 'Dorel'} -- un array cu nume

	-- incepe de la 1, si se termina la 4, pentru ca # numara cate instante (nume) ai in array 
	for numar = #array_cu_nume, 1, -1  do -- incepe de la 4 pana la 1 din 1 in 1 (scade -1 de fiecare data pana ajunge la 1)
		print("Numele este: ", array_cu_nume[numar]) -- numar e inlocuit cu 1, 2, 3, 4 
	end

end

-- Asta iti va printa tie in consola din sampfuncs
-- Numele este:   Dorel
-- Numele este:   Sandu
-- Numele este:   Viorel
-- Numele este:   Mihaita
