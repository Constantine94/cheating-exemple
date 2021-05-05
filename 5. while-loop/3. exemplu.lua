-- While loop este folosit pentru a repeta diverse lucruri de un numar nestiut de ori

function main()

    -- Exemplu 1

    -- cat timp a == 1, va printa la infinit fara sa se opreasca "Voi printa chestia asta la infinit"

    a = 4
    b = 2

 --  a == 4 (da e adevarat, 4 e egal cu 4), b == 3(fals, 2 nu e egal cu 3)
 --  deci, e adevarat, pentru ca  a == 4 , automat va repeta la infinit
 --  din exemplu trecut, v-am aratat ca atunci vand avem OR (ORI), e nevoie doar de una dintre expresii sa fie corecta
 --  in cazul nostru expresia (a == 4) e adevarata, deci va repeta la infinit print()-ul de mai jos

    while a == 4 or b == 3 do
        print("Voi printa chestia asta la infinit")
    end

    -- Output: Va printa la fara sa se opreasca print()-ul de mai sus



end
