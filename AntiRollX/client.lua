Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Wait minimum time for performance
        local ped = GetPlayerPed(-1)
        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, false)
            local roll = GetEntityRoll(vehicle) -- Gets the vehicle's roll angle in degrees

            -- Check if the vehicle is significantly upside down (e.g., roll angle > 75 or < -75 degrees)
            -- and moving slowly or stopped.
            if (roll > 75.0 or roll < -75.0) and GetEntitySpeed(vehicle) < 2 then
                -- Disable controls for manual flipping (InputGroup 2 is Vehicle)
                DisableControlAction(2, 59, true) -- Disable vehicle move left/right (INPUT_VEH_MOVE_LR)
                DisableControlAction(2, 60, true) -- Disable vehicle move up/down (INPUT_VEH_MOVE_UD)
            end
        end
    end
end)
