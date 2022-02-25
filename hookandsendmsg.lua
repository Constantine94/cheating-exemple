local ev = require 'lib.samp.events'
require 'utils'

message = "o suta douajdemi"
phone = nil
delay = 500

function main()
    if not isSampfuncsLoaded() or not isSampLoaded() then return end
    while not isSampAvailable() do wait(100) end
end

function ev.onServerMessage(color, text)
    if string.find(text, "phone number is") ~= nil then
        for c,x in ipairs(split_string(text, ' ')) do
            if c == 6 then
                phone = x
            end
        end
        phone = split_string(split_string(split_string(phone, "}")[2], "{")[1], ".")[1]
        string = string.format("/sms %d %s", phone, message)
        lua_thread.create(function()
            wait(delay)
            sampSendChat(string)
        end)
    end
end