local key = require 'vkeys'

function message(msg)
    sampAddChatMessage("{ff0000}Me: {ffffff}" .. msg)
end

function main()
    while true do 
        wait(0)
        if isKeyDown(key.VK_F2) then -- flip car
            flip_car()
            wait(300)
        end
        if isKeyDown(key.VK_F3) then -- repair hack
            repair_car()
            wait(300)
        end
    end
end

function flip_car()
    if isCharInAnyCar(playerPed) then
        local carHandler = storeCarCharIsInNoSave(playerPed) 
        x, y, z, w = getVehicleQuaternion(carHandler)
        setVehicleQuaternion(carHandler, -0.0010155386989936 , -0.0031407431233674, z, w)
    else
        message("Nu e in masina")
    end
end

function repair_car()
    if isCharInAnyCar(playerPed) then
        local carHandler = storeCarCharIsInNoSave(playerPed)
        setCarHealth(carHandler, 999) 
    else
        message("Nu e in masina")
    end
end 

