v =  require 'vkeys'
require 'math'


--      __    _ __              __       
--     / /   (_) /_  ___  _____/ /___  __
--    / /   / / __ \/ _ \/ ___/ __/ / / /
--   / /___/ / /_/ /  __/ /  / /_/ /_/ / 
--  /_____/_/_.___/\___/_/   \__/\__, /  
--      Familia_Gradinaru       /____/   

script_name('Cruise-Control')
script_description('Discord: https://discord.gg/25D6yHn9qQ')

-- Utilizare
-- F9  - Start Bot
-- F10 - Stop Bot
-- F11 - Scade viteza vehicul
-- F12 - Creste viteza vehicul
-- Shift-Dreapta - Inregistreaza viteza maxima a vehiculului (mergi cu viteza maxima a masina apoi apasa shift dreapta pentru a inregistrea vitexa maxima)

function msg(arg1) 
    print(string.format("{00cc00}Bot: {ffffff}%s", arg1))
end

function msgw(arg1) 
    print(string.format("{ff0000}Bot: {ffffff}%s", arg1))
end


function main()
    screenX, screenY = getScreenResolution()
    local font = renderCreateFont("Arial", 15, 9)
    savedSpeed = 0
    while true do
        wait(0)
        if isKeyDown(v.VK_RSHIFT) then
            if not isCharInAnyCar(playerPed) then
                msgw("Nu esti intr-un vehicul")
                wait(500)
                return 0
            else
                carH = storeCarCharIsInNoSave(playerPed)
                speed = getCarSpeed(carH)
                savedSpeed = speed
                msg("Speed saved to: " .. math.floor(speed))
                print(speed)
                wait(500)
            end
        end

        if isKeyDown(v.VK_F9) then 
            msg("Control started")
            if isCharInAnyCar(playerPed) then
                while true do 
                    wait(0)
                    if isKeyDown(v.VK_F10) or isKeyDown(v.VK_S)  then
                        msgw("The script was disabled")
                        return 0
                    end

                    if isKeyDown(v.VK_F11)then
                        if savedSpeed > 1 then
                            savedSpeed = savedSpeed - 1
                            wait(100)
                        else
                            msgw("Speed can't be under -0")
                            wait(100)
                        end
                    end

                    if isKeyDown(v.VK_F12) then
                        carH = storeCarCharIsInNoSave(playerPed)
                        speed = getCarSpeed(carH)
                        if savedSpeed > 61.704613494873 then
                            msgw("Speed over limit. Bot reloaded")
                            wait(100)
                            return 0
                        else
                            savedSpeed = savedSpeed + 1
                            wait(100)
                        end
                    end
                    carH = storeCarCharIsInNoSave(playerPed)
                    if getCarSpeed(carH) < savedSpeed then 
                        accelerate()
                    end
                    local text = ("{00cc00}Bot: {ffffff}%.0f"):format(math.floor(savedSpeed))
                    renderDrawBox((screenX / 2) - 90, screenY - 50, 80, 31, 0xFF323232)
                    renderFontDrawText(font, text, (screenX / 2) - 85, screenY - 47, 0xFFCCCCCC)
                    
                end
            else
                msgw("Nu esti intr-un vehicul")
                wait(500)
                return 0
            end
        end
    end
end


function accelerate() 
    writeMemory(0xB73458 + 0x20, 1, 255, false)
end
