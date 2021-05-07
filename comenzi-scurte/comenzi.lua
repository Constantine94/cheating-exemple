
-- comentezi prescurtate

-- /fb id (cauta business-ul)
-- /fh id (cauta casa) 
-- /fd id (cauta userul)

function main() 
	sampRegisterChatCommand("fb", fb)
	sampRegisterChatCommand("fh", fh) 
	sampRegisterChatCommand("fd", fd) 
	wait(-1) 
end

function fb(id) 
	sampSendChat("/findbusiness " .. tostring(id))
end

function fh(id) 
	sampSendChat("/findhouse " .. tostring(id)) 
end

function fd(id) 
	sampSendChat("/find " .. tostring(id)) 
end




