
-- Concatenarea reprezinta processul de lipire a doua caractere sau stringuri

function main()
    
    --    ( .. ) = face posibila lipirea unui string de altul (il puteti imagina ca un + )

    -- Exemplu 1
    a = " Salut "
    b = " Matei "
    c = a .. b
    print(c)
    -- Output: Salut Matei

    
    -- Exemplu 2
    a = 'A'
    b = "na"
    c = " are mere"
    d = a .. b .. c
    print(d)
    -- Output: Ana are mere


    -- Exemplu 3
    a = 'Numarul este:  '
    b = 3 
    c = a .. tostring(b)
    print(c)
    -- Output : Numarul este: 3

    -- De ce am folosit functia totstring(b) pe numarul b?
    -- Pentru ca nu poti lipi un string de un numar
    -- In felul asta eu am folosit functia tostring(b) ca sa convertesc, 3 in "3"
    -- 3 = decimala / numar/ integer
    -- "3" = aici 3 e vazut ca string, nu ca un numar / decimala
    -- to string convereste numere in stringuri, gen din 5 face "5", din 121 face "121", din 999999 face "999999"

    -- De tinut minte
    -- tostring(3) = "3" -> convereste din numere in stringuri
    -- tonumber("3") = 3 -> converteste din stringuri in numere


end
main()