--      __    _ __              __       
--     / /   (_) /_  ___  _____/ /___  __
--    / /   / / __ \/ _ \/ ___/ __/ / / /
--   / /___/ / /_/ /  __/ /  / /_/ /_/ / 
--  /_____/_/_.___/\___/_/   \__/\__, /  
--      Familia_Gradinaru       /____/   

script_name('Object-finder')
script_description('Discord: https://discord.gg/KuCRAvHvtQ')

function main() 

	rezolutieX, rezolutieY = getScreenResolution()

	while true do 
		wait(0)
		if isKeyDown(0xA0) then
			for counter, obiect in ipairs(getAllObjects()) do
				if daca_e_obiectul_in_array( getObjectModel(obiect) ) == 1 then
					if isObjectOnScreen(obiect) then
						status, obiectX, obiectY, obiectZ = getObjectCoordinates(obiect) 
						objScreenX, objScreenY  = convert3DCoordsToScreen(obiectX, obiectY, obiectZ)
						renderDrawLine (rezolutieX / 2, rezolutieY, objScreenX, objScreenY, 1, 0xFFFFFFFF) 
					end
				end
			end
		end
	end
end 


function daca_e_obiectul_in_array(obiect_id) 
	array_cu_obiecte = {1968, 1805}
	for counter, obiect_din_array in ipairs(array_cu_obiecte) do
		if obiect_id == obiect_din_array then
			return 1
		end	
	end
end

-- renderDrawLine (float pos1X, float pos1Y, float pos2X, float pos2Y, float width, uint color) 
-- bool result, float positionX, float positionY, float positionZ = getObjectCoordinates (Object object) 
-- float wposX, float wposY = convert3DCoordsToScreen(float posX, float posY, float posZ)
-- int resX, int resY = getScreenResolution () 
-- bool result = isObjectOnScreen (Object object) 
-- table objects = getAllObjects ()
-- Model modelId = getObjectModel (Object object) 
