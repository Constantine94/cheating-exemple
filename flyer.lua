
x, y, z = 0, 0, 0
are_coords_dumped = false

min_value = 0
max_value = 10
increased_value = 0.001
decreased_value = -0.001

require 'vkeys'

function main()
    while true do 
        wait(0)
        if isKeyDown(0x72) then
            start()
        end
    end
end

function is_actor_able_to()
    if (sampIsLocalPlayerSpawned() and isCharInAnyCar(playerPed)) then
        return true
    else
        return false
    end
end

function dump_coords()
    if is_actor_able_to() then
        car_handler = storeCarCharIsInNoSave(playerPed)
        carX ,carY, carZ = getCarCoordinates(car_handler)
        x, y, z = carX ,carY, carZ
        are_coords_dumped = true
        wait(10)
    end
end

function start()

    print("Script started")
    wait(200)
    if is_actor_able_to() == false then
        print("You are not spawned or in car")
        return false
    else
        dump_coords()
    end

    if are_coords_dumped == false then print("commands not dummped") return false end
    while true do
        for c = min_value, max_value, increased_value do
            print(c)
            setCarCoordinates(car_handler, x, y, z + c)
            wait(0)
            if is_actor_able_to() == false then return false end
        end
        for c = max_value, min_value, decreased_value do
            print(c)
            setCarCoordinates(car_handler, x, y, z + c)
            wait(0)
            if is_actor_able_to() == false then return false end
        end
    end
end

