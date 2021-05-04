


function main() -- functia principala
    sampRegisterChatCommand("salute", te_salut) -- inregistreaza comenzi in joc
    wait(-1) -- asteapta o secunda
end

function te_salut() -- functia te_salut
    sampAddChatMessage("Salut, ce mai faci?") -- trimite pe chat-ul tau mesajul("Salut, ce mai faci?")
end




