
-- O functie reprezinta un bloc de activitati / actiuni
-- Functii care pot sa returneze diverse lucruri

function main()

    print( calculez_suma() ) -- imi va printa pe ecran 4, pentru ca calculez_suma() e o functie care returneaza lucruri
    ce_returneaza_functia = calculez_suma() -- variabila asta ce_returneaza_functia stocheaza ce returneaza functia calculez_suma()
    print(ce_returneaza_functia) -- va printa 4

end

function calculez_suma()
    suma_a_doua_numere = 2 + 2 
    return suma_a_doua_numere  -- aici imi va returna variabila suma_a_doua_numere, care este 4
    -- return 2 + 2 -- puteam returna si in felul asta
end