
function main() 

	rezolutieX, rezolutieY = getScreenResolution() -- ia rezolutia ferestrei din joc

	while true do 
		wait(0)
		if isKeyDown(0xA0) then -- daca butonul shift-stanga e apasat atunci
			for counter, obiect in ipairs(getAllObjects()) do
				if daca_e_obiectul_in_array( getObjectModel(obiect) ) == 1 then
					if isObjectOnScreen(obiect) then
						status, obiectX, obiectY, obiectZ = getObjectCoordinates(obiect) 
						objScreenX, objScreenY  = convert3DCoordsToScreen(obiectX, obiectY, obiectZ)
						renderDrawLine (rezolutieX / 2, rezolutieY, objScreenX, objScreenY, 1, 0xFFFFFFFF) 
					end
				end
			end
		end
	end
end 


-- Functia asta verifca daca object-ul tau, exista in array-ul "array_cu_obiecte"
-- for loop-ul ia fiecare item din array_cu_obiecte, si il compara cu obiect_id-ul tau
-- daca il gaseste in array, atunci returneaza 1, ceea ce inseamna ca la gasit
-- ipairs e o functie ce are posibilitatea de a selecta fiecare item dintr-un array
-- returnand numarul si item-ul dintre paranteze

function daca_e_obiectul_in_array(obiect_id) 
	-- https://dev.prineside.com/en/gtasa_samp_model_id/ - toate obiectele din GTASA / SAMP le gasesti aici
	array_cu_obiecte = {1968, 1805} -- aici sunt modelele de obiecte pe care scriptul le cauta
	for counter, obiect_din_array in ipairs(array_cu_obiecte) do
		if obiect_id == obiect_din_array then 
			return 1
		end	
	end
end

-- fiecare obiect, vehicul, jucator sau entitate din joc, are un handler
	-- iti poti imagina handler-ul ca fiind un cub aflat in fiecare jucator, vehicul sau obiect, nevizibil ochiului
	-- ce detine informatii despre aceea entitate
	-- de exemplu handler-ul unui jucator poate contine informatii despre numele lui, despre viata lui, despre armura, despre coordonatele lui
	-- despre ce animatie foloseste in momentul respectiv
	-- practic, handler-ul stocheaza informatii despre entitatea respectiva, indiferent ca e obiect, vehicul sau masina
	-- orice enitate din joc are un handler diferit, gen, fiecare jucator are un handler diferit

-- table objects = getAllObjects ()
	-- returneaza un array Ex: ( {1,5111,512,561,6124} ) cu toate obiectele pe care jocul le gaseste in jurul caracterului tau
	-- mai exact gaseste handler-ele lor

-- int modelId = getObjectModel (Object object) 
	-- functia asta ia tipul de obiect (de care model e el) din handlerul obiectului
	-- si returneaza modelul inapoi, ex poate returna 1, 2 sau 5 sau etc
	
-- bool result = isObjectOnScreen (Object object)
	-- daca tu te uiti cu camera jocului catre un obiect, chiar daca tu nu il vezi
	-- functia asta va returna true or false in functie daca tu te uiti sau nu la acel obiect
	-- true daca te uiti cu camera jocului spre el
	-- false daca nu te uiti cu camera jocului la el
	
-- bool result, float positionX, float positionY, float positionZ = getObjectCoordinates (Object object)
	-- functia asta returneaza coordonatele pe mapa ale obiectului, mai exact unde se afla el pe mapa 
	-- si stocheaza true sau false in variabila result, daca il gaseste sau nu 
	-- daca result e true, atunci a gasit obiectul si ii poate lua coordonatele
	-- daca result e false, atunci nu a putut lua coordonatele din acel obiect
	-- din diferite motive, fie e prea departe, fie nu e in raza ta, fie serverul a sters acel obiect

-- float wposX, float wposY = convert3DCoordsToScreen(float posX, float posY, float posZ)
	-- converteste coordonatele unui obiect, vehicul sau player din coordonate 3D in pixeli de ecran
	-- in felul asta te ajuta sa desenezi, linii, cuburi, cercuri pe ecran unde sunt playeri, vehicule sau obiecte

-- renderDrawLine (float pos1X, float pos1Y, float pos2X, float pos2Y, float width, uint color) 
	-- trage linie de la o anumita pozitie, la o alta pozitie pe ecran
	-- width e cat de groasa sa fie linia
	-- uint color e culoarea in ARGB (culorile se pot lua de aici https://hugabor.github.io/color-picker/)
	
-- int resX, int resY = getScreenResolution () 
	-- ia rezolutia ferestrei jocului, ceea pe care o ai in setarile jocului
	-- de exemplu ea poate sa fie 640x480, sau 800x600, in functie de cum ai tu rezolutia in video-settings

-- Exemplu ipairs

function random()
	array_cu_numere = {5000,6000,9999,4}
	for counter, obiect_din_array in ipairs(array_cu_numere) do 
		print(counter, obiect_din_array)
	end
	-- Ce va printa pe ecran?
	-- Va printa:
	-- 1, 5000 
	-- 2, 6000
	-- 3, 9999
	-- 4, 4
	
	-- Counterul doar enumera al catelea item e
end
