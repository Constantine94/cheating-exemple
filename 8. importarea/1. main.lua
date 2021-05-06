
-- require iti ofera posibilitatea de a importa variabile sau functii din alte file-uri .lua
-- pentru a importa scriem require si numele file-ului din care vrem sa importam lucruri
-- in cazul nostru, noi vrem sa importam din functii.lua, deci vom scrie require 'functii' (fara .lua la final)

require 'variabile/variabile-cu-numere' -- se duce in folderul variabile, apoi in variabile-cu-numere.lua si importa variabila cu numele "numar"
require 'functii'



function main()

    print(numar) -- va printa 200

    print(nume) -- va printa Daniel, pentru in functii.lua, exista o variabila numita "nume", a carei valoare este "Daniel"

    printez_chestii() -- importa functia printez_chestii din functii.lua, si o executa aici

end

