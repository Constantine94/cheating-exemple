
--     not = e e folosit pentru valori de tip bool ( true or false)

function main()

    status = true
    
    -- daca status e true atunci
    if status then -- expresia e adevarata
        print("Da, status e true ")
    else
        print("Nu, status nu e true")
    end
    -- Output: Da, status e true

    
    if not status then -- in general not, converteste din true in false, sau din false in true, in cazul acesta, status = true
        -- deci citim "daca status e false"
        print("Da, status e true ")
    else
        print("Nu, status nu e true")
    end
    -- Output: Nu, status nu e true

end

-- Pentru a deschide consola din SAMPFUNCS 
-- apasam butonul ( ` )  de langa butonul ( 1 )