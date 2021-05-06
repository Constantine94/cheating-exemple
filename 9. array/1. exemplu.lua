
-- array-urile sunt niste structuri ce contin tot felul de date, numere, stringuri, etc
-- gandeste un array ca un cos cu diverse lucruri in el, mere, pere, nuci sau orice alte obiecte, lucruri etc

function main()
	
	-- Exemplu 1
	
	array_cu_nume = {'Mihai', 'Daniel', 'Andrei', 'Dorel'} -- un array cu nume

	-- Vrem sa selectam prima instanta, aceasta find Mihai
	print( array_cu_nume[1] ) -- asta ne va printa pe ecran 'Mihai',  pentru ca noi am selectat prima instanta din array

	print( array_cu_nume[4] ) -- asta ne va printa pe ecran 'Dorel',  pentru ca noi am selectat a 4-a instanta din array
	
	print( #array_cu_nume ) -- # e un keyword care iti ofera  posibilitatea, de a numara cate instante (nume in cazul nostru) ai in array, noi avem 4 nume, deci va printa numarul 4
end

