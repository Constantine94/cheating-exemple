
-- array-urile sunt niste structuri ce contin tot felul de date, numere, stringuri, etc
-- gandeste un array ca un cos cu diverse lucruri in el, mere, pere, nuci sau orice alte obiecte, lucruri etc

function main()
	
	-- Exemplu 1
	
	array_cu_numere = {5000, 6000, 8000, 9999} -- un array cu numere

	-- incepe de la 1, si se termina la 4, pentru ca # numara cate instante (numere) ai in array 
	for numar = 1, #array_cu_numere do
		print("Numarul este: ", array_cu_numere[numar]) -- numar e inlocuit cu 1, 2, 3, 4 
	end

end


-- Asta iti va printa tie in consola din sampfuncs
-- Numarul este:   5000
-- Numarul este:   6000
-- Numarul este:   8000
-- Numarul este:   9999

