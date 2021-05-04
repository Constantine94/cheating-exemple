
-- Operatorii

-- Tipuri de operatori: 
    -- aritmetici
    -- rationali
    -- logici


-- Operatori aritmetici 

function main()
    
--  +  = aduna 
    a = 1 + 3 + 1  -- ( variabila a va fi 5 )
    c = 1 + 2 -- ( variabila c va fi 3 )
    b = (1 + 2 + 3 )  + 2  + (1 + 1) -- ( variabila b va fi 10 )
    
-- - = scade 
    variabila1 = 9 - 9 -- ( variabila1 va fi 0 )
    variabila2 = 9 - 8 -- ( variabila2 va fi 1 )
    variabila3 = 9 - 3 - (3 - 1)-- ( variabila3 va fi 4 ) (prima data calculeaza parantezele)

-- * = inmultumeste 
    variabila_2 = 3 * 3  -- ( variabila_2 va fi 9 )
    variabila_3 = 2 * 2 * 2 -- ( variabila_3 va fi 8 )

-- % = modul 
    variabila4 = 9 % 2 -- ( variabila4 va fi 1, pentru ca 8 impartit la 2 = 4, 4 x 2 + 1 = 9)
    variabila5 = 23 % 2 -- ( variabila5 va fi 1, pentru ca 22 impartit la 2 = 11, 11 x 2 + 1 = 23)
    variabila6 = 10 % 2-- ( variabila6 va fi 0, pentru ca 10 impartit la 2 = 5, 5 x 2 + 0 = 10)

-- Operatori rationali

-- == verifica daca 2 valori sunt egale (if 0 == 0 then) -> daca 0 e egal cu 0 atunci
    if (0 == 0) then
        print("Da, 0 este egal 0")
    else
        print("Nu, 0 nu este egal cu 0")
    end
    -- Output: Da, 0 este egal 0

 --  ~= verifica daca 2 valori nu sunt egale (if 1 ~=  0 then) -> daca 1 nu e egal cu 0 atunci
    if (1 ~= 0) then
        print("Da, 1 nu este egal 0")
    else
        print("Nu, 1 este egal cu 0")
    end
    -- Output: Da, 1 nu este egal 0

--  > verifica daca prima valoare, e  mai mare decat cea de-a doua (if 1 > 0 then) -> daca 1 e mai mare decat 0 atunci
    if (1 > 0) then
        print("Da, 1 este mai mare decat 0")
    else
        print("Nu, 1 nu este mai mare decat 0")
    end
    -- Output: Da, 1 este mai mare decat 0

--     < verifica daca prima valoare, e mai mica decat cea de-a doua (if 1 < 2 then) -> daca 1 e mai mic decat 2 atunci
    if (1 < 2) then
        print("Da, 1 e mai mic decat  2")
    else
        print("Nu, 1 nu este mai mic decat 2")
    end
    -- Output: Da, 1 e mai mic decat  2

-- >= verifica daca prima valoare, e mai mare sau egala cu cea de-a doua (if 10 >= 10 then) -> daca 10 e mai mare sau egal cu 10 atunci
    if (10 >= 10) then
        print("Da, 10 nu este mai mare decat 10, dar este egal cu 10")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Da, 10 nu este mai mare decat 10, dar este egal cu 10

-- <= verifica daca prima valoare, este mai mica sau egala cu cea de-a doua (if 5 <= 5 then) -> daca 5 este mai mic sau egal cu 5 atunci 
    if (5 <= 5) then
        print("Da, 5 nu este mai mic decat 5, dar este egal cu 5")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Da, 5 nu este mai mic decat 5, dar este egal cu 5

-- Operatori logici

-- and = si daca 0 e egal cu 0 si 1 e egal  cu 1 atunci
    if (0 == 0) and (1== 1) then 
        print("Da, 0  e egal cu 0 si 1 e egal cu 1")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Da, 0  e egal cu 0 si 1 e egal cu 1


-- or = ori (if (0 == 0) or (1 == 1) then ) -> daca 0 e egal cu 0 ori 1 e egal cu 1 atunci
    if (0 == 0) or (1 == 1) then
        print("Una dintre ele este adevarata")
    else
        print("Niciuna nu e adevarata")
    end
    -- Output: Una dintre ele este adevarata,  0  e egal cu 0 ori 1 e egal cu 1

--     not = nu (if  not 1 ~= 1  then ) -> daca nu 1 nu e egal cu 1 atunci
    status = true
    if not status then -- converteste status, daca status = true, atunci not status = false
        print("Da, status e true ")
    else
        print("Nu, status nu e true")
    end
    -- Output: Nu, status nu e true
end

-- Pentru a deschide consola din SAMPFUNCS 
-- apasam butonul ( ` )  de langa butonul ( 1 )