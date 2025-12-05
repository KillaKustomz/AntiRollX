-- AntiRollX v1.1.0
-- Adds airborne control prevention + upside-down flip prevention

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local ped = PlayerPedId()

        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, false)
            local roll = GetEntityRoll(vehicle)
            local speed = GetEntitySpeed(vehicle)
            local airborne = IsEntityInAir(vehicle)

            -- Condition A: Vehicle airborne
            if airborne then
                -- Disable mid-air steering / flipping
                DisableControlAction(2, 59, true)  -- Left/Right roll
                DisableControlAction(2, 60, true)  -- Up/Down pitch
            end

            -- Condition B: Vehicle upside down + nearly stopped
            if (roll > 75.0 or roll < -75.0) and speed < 2 then
                DisableControlAction(2, 59, true)
                DisableControlAction(2, 60, true)
            end
        end
    end
end)
