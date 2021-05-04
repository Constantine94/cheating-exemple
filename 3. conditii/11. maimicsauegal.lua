-- <= verifica daca prima valoare, e mai mica sau egala cu cea de-a doua

function main()

    -- daca 10 e mai mare sau egal cu 10 atunci
    if (10 <= 10) then
        print("Da, 10 nu este mai mic decat 10, dar este egal cu 10")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Da, 10 nu este mai mic decat 10, dar este egal cu 10

    if (11 <= 12) then
        print("Da, 11 e mai mic decat 12, dar nu si egal cu 12")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Da, 11 e mai mic decat 12, dar nu si egal cu 12
    
    if (20 <= 10) then
        print("20 e mai mare sau egal cu 10")
    else
        print("Niciuna nu e adevarata, 20 nu e mai mic decat 10 si nici egal cu 10")
    end
    -- Output: Niciuna nu e adevarata

end

-- Pentru a deschide consola din SAMPFUNCS 
-- apasam butonul ( ` )  de langa butonul ( 1 )