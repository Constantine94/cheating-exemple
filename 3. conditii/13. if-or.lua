
-- or = ori

function main()

    -- daca 1 == 1 ori 2 == 2 
    if ( (1 == 1) or ( 2 == 2 ) ) then
        print("Da, una dintreze paranteze este corecta, sau poate chiar ambele")
    else
        print("Ambele paranteze nu sunt adevarate")
    end
    -- Output: Da, una dintreze paranteze este corecta, sau poate chiar ambele

    -- tabelul adevarului OR | true false = true 
    if (  (1 == 1 ) and ( 1 == 2 ) ) then -- atata timp cat una dintre ele este adevarata, expresia e valida
        print("Da, prima este adevarata, dar a doua nu") 
    else
        print("Ambele paranteze nu sunt adevarate")
    end
    -- Output: Da, prima este adevarata, dar a doua nu

    if ( (1 == 4 ) and ( 1 == 5 ) ) then -- atata timp cat una dintre ele estte adevarata, expresia e valida
        print("Da, prima este adevarata, dar a doua nu")
    else
        print("Ambele paranteze nu sunt adevarate")
    end
    -- Output: Ambele paranteze nu sunt adevarate

end

-- Pentru a deschide consola din SAMPFUNCS 
-- apasam butonul ( ` )  de langa butonul ( 1 )