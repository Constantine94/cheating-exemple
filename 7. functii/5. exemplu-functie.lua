
-- O functie reprezinta un bloc de activitati / actiuni

function main()
    un_string = afisez_utilizatorul("Daniel", "Tudose")
    print(un_string) -- Numele meu este: Tudose Prenumele este: Daniel

    print( afisez_utilizatorul("Daniel", "Tudose") )
    -- Numele meu este: Tudose Prenumele este: Daniel

    -- se poate printa si in felul asta, fara sa mai stochezi ce returneaza functia intr-o variabila
    -- in cazul nostru in un_string
end


function afisez_utilizatorul(prenume, nume)
    return "Numele este: " .. nume .. " Prenumele este: " .. prenume
    -- Va returna "Numele meu este: Tudose Prenumele este: Daniel"

end

