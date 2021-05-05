-- While loop este folosit pentru a repeta diverse lucruri de un numar nestiut de ori

function main()

    -- Exemplu 1

    -- cat timp a == 1, va printa la infinit fara sa se opreasca "Voi printa chestia asta la infinit"

    a =  1
    while a == 1 do  -- a == 1 deci, e adevarat (repeta la infinit)
        print("Voi printa chestia asta la infinit")
    end

    -- Output: Va printa fara sa se opreasca print()-ul de mai sus "Voi printa chestia asta la infinit"


    -- Exemplu 2

    b = 2
    while a == 9 do -- a nu este egal cu 9, pentru ca 2 nu e egal cu 9, automat, nu se va executa nimic, expresia nu e adevarata
        print("Voi printa asta la infinit")
    end

    -- Output:  Nu va executa nimic, expresia (a == 9 ) nu e adevarata


end
