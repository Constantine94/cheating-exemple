-- >= verifica daca prima valoare, e mai mare sau egala cu cea de-a doua

function main()

    -- daca 10 e mai mare sau egal cu 10 atunci
    if (10 >= 10) then
        print("Da, 10 nu este mai mare decat 10, dar este egal cu 10")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Da, 10 nu este mai mare decat 10, dar este egal cu 10

    if (11 >= 10) then
        print("Da, 11 e mai mare decat 10, dar nu si egal cu 10")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Da, 11 e mai mare decat 10, dar nu si egal cu 10

    if (9  >= 10) then
        print("9 e mai mare sau egal cu 10")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Niciuna nu e adevarata, 9 nu e nici mai  mare, nici egal cu 10

end

-- Pentru a deschide consola din SAMPFUNCS 
-- apasam butonul ( ` )  de langa butonul ( 1 )