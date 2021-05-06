-- O functie reprezinta un bloc de activitati / actiuni

function main()
    cat_face = suma(6, 6)
    print(cat_face) -- va returna 12, pentru ca functia suma, calculeaza suma celor 2 argumente, si dupa returneaza suma inapoi

    informatie = inregistrare("Tudose", 99999)
    print(informatie) -- va returna Utilizatorul cu numele: Tudose si id-ul contului: 99999 sa inregistrat

end

function suma(numarul1, numarul2)
    calculez_suma = numarul1 + numarul2
    return calculez_suma
end

function inregistrare(nume, idcont)
    alerta = "Utilizatorul cu numele: " .. nume .. " si id-ul contului: " .. tostring(idcont)  .. " sa inregistrat"
    return alerta
end

