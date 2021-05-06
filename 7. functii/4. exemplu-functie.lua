
-- O functie reprezinta un bloc de activitati / actiuni
-- Functii care pot sa returneze diverse lucruri

function main()
    
    nume_si_prenume = returnez_string_exemplu1()
    print(nume_si_prenume) -- va printa "Daniel Tudose"

    prenume, nume = returnez_string_exemplu2()
    print(prenume, nume) -- va printa "Daniel, Tudose"
    
    un_string = returnez_string_exemplu3()
    print(un_string) -- va printa "Ma numesc Daniel si imi place gradinaritul"

end

function returnez_string_exemplu1()
    prenume = "Daniel "
    nume = "Tudose "

    return prenume .. nume -- in felul asta veti returna "Daniel Tudose". Veti returna un lucru
end

function returnez_string_exemplu2()
    prenume = "Daniel "
    nume = "Tudose "

    return prenume, nume -- in felul asta veti returna "Daniel", Tudose. Veti returna 2 lucruri
end

function returnez_string_exemplu3()
    prenume = "Daniel "
    nume = "Tudose "

    return "Ma numesc " .. prenume .. " si imi place gradinaritul" -- returneaza "Ma numesc Daniel si imi place gradinaritul". Veti returna un singur lucru
end
