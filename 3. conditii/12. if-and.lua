-- and = si

function main()

    -- daca 1 == 1 si 2 == 2 
    if (  (1 == 1) and ( 2  == 2 ) ) then
        print("Da, ambele paranteze sunt corecte")
    else
        print("Una dintre paranteze nu e adevarata sau poate chiar ambele")
    end
    -- Output: Da, ambele paranteze sunt corecte

    if (  (1 == 2 ) and ( 2  == 2 ) ) then -- daca una e gresita, automat expresia devine invalida
        print("Da, ambele paranteze sunt corecte")
    else
        print("Una dintre paranteze nu e adevarata sau poate chiar ambele")
    end
    -- Output: Una dintre paranteze nu e adevarata sau poate chiar ambele

end

-- Pentru a deschide consola din SAMPFUNCS 
-- apasam butonul ( ` )  de langa butonul ( 1 )