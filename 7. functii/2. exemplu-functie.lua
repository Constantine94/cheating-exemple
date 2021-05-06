
-- O functie reprezinta un bloc de activitati / actiuni

function main()
     -- asta va printa pe ecran "Astazi am udat florile din prima gradina"
     -- pentru ca va executa codul din interiorul functiei ud_florile
    ud_florile()


     -- asta va printa pe ecran "Maine nu mai ud florile"
     -- pentru ca va executa codul din interiorul functiei nu_ud_florile
    nu_ud_florile()
end

-- Putem crea cate functii vrem noi

function ud_florile()
    print("Astazi am udat florile din prima gradina")
end


function nu_ud_florile()
    print("Maine nu mai ud florile")
end