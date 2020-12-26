
function text(content) 
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.9,0.7)
end
Citizen.CreateThread(function()

    while true do
        Citizen.Wait(1)
        local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6) --change the 3.6 to 2.2369 if you are in MP/h
        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end
    end
end)

--KM/h = 3.6 
--MP/h = 2.2369

