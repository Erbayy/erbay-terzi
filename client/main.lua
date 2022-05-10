ESX = nil


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
        RefreshBlip()
        CreateBlip()
	end

end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
    RefreshBlip()
    CreateBlip()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer

end)

function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(2)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    while true do
        local ms = 2000
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        if GetDistanceBetweenCoords(playercoords, Config.Toplamabolgesikumas.x, Config.Toplamabolgesikumas.y, Config.Toplamabolgesikumas.z, true) < 10 then
            ms = 0
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'terzi' then
                DrawMarker(2, Config.Toplamabolgesikumas.x, Config.Toplamabolgesikumas.y, Config.Toplamabolgesikumas.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4, 0.2, 255, 255, 255, 255, 0, 0, 0, 1, 0, 0, 0)
                if GetDistanceBetweenCoords(playercoords, Config.Toplamabolgesikumas.x, Config.Toplamabolgesikumas.y, Config.Toplamabolgesikumas.z, true) < 2.0 then
                    DrawText3D(Config.Toplamabolgesikumas.x, Config.Toplamabolgesikumas.y, Config.Toplamabolgesikumas.z + 0.4, 'Tavuk eti toplamak icin ~g~E~s~ bas')
                    if IsControlJustPressed(0, 38) then
                            exports['mythic_progbar']:Progress({
                            name = "kumastopla",
                            duration = Config.toplamasuresikumas,
                            label = 'Kumaş topluyorsun...',
                            useWhileDead = false,
                            canCancel = false,
                            controlDisables = {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            },
                            animation = {
                                animDict = "creatures@rottweiler@tricks@",
                                anim = "petting_franklin",
                                flags = 49,
                            },
                            }, function(cancelled)
                            if not cancelled then
                                TriggerServerEvent('erbay-terzi:kumastopla')
                                Citizen.Wait(Config.toplamasuresikumas)
                            else
                            -- Do Something If Action Was Cancelled
                            end
                        end)
                    end
                end
            end
        end
        if GetDistanceBetweenCoords(playercoords, Config.Islemebolgesikumas.x, Config.Islemebolgesikumas.y, Config.Islemebolgesikumas.z, true) < 10 then
            ms = 0
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'terzi' then
                DrawMarker(2, Config.Islemebolgesikumas.x, Config.Islemebolgesikumas.y, Config.Islemebolgesikumas.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4, 0.2, 255, 255, 255, 255, 0, 0, 0, 1, 0, 0, 0)
                if GetDistanceBetweenCoords(playercoords, Config.Islemebolgesikumas.x, Config.Islemebolgesikumas.y, Config.Islemebolgesikumas.z, true) < 2.0 then
                    DrawText3D(Config.Islemebolgesikumas.x, Config.Islemebolgesikumas.y, Config.Islemebolgesikumas.z + 0.4, 'Tavuk eti toplamak icin ~g~E~s~ bas')
                    if IsControlJustPressed(0, 38) then
                            exports['mythic_progbar']:Progress({
                            name = "tavuketitopla",
                            duration = Config.islemesuresikumas,
                            label = 'Kumas dikiyorsun...',
                            useWhileDead = false,
                            canCancel = false,
                            controlDisables = {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            },
                            animation = {
                                animDict = "creatures@rottweiler@tricks@",
                                anim = "petting_franklin",
                                flags = 49,
                            },
                            }, function(cancelled)
                            if not cancelled then
                                TriggerServerEvent('erbay-terzi:kiyafetekle')
                                Citizen.Wait(Config.islemesuresikumas)
                            else
                            -- Do Something If Action Was Cancelled
                            end
                        end)
                    end
                end
            end
        end
        if GetDistanceBetweenCoords(playercoords, Config.Satmabolgesipantolon.x, Config.Satmabolgesipantolon.y, Config.Satmabolgesipantolon.z, true) < 10 then
            ms = 0
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'terzi' then
                DrawMarker(2, Config.Satmabolgesipantolon.x, Config.Satmabolgesipantolon.y, Config.Satmabolgesipantolon.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4, 0.2, 255, 255, 255, 255, 0, 0, 0, 1, 0, 0, 0)
                if GetDistanceBetweenCoords(playercoords, Config.Satmabolgesipantolon.x, Config.Satmabolgesipantolon.y, Config.Satmabolgesipantolon.z, true) < 2.0 then
                    DrawText3D(Config.Satmabolgesipantolon.x, Config.Satmabolgesipantolon.y, Config.Satmabolgesipantolon.z + 0.4, 'Tavuk eti toplamak icin ~g~E~s~ bas')
                    if IsControlJustPressed(0, 38) then
                        exports['mythic_progbar']:Progress({
                            name = "pantolonsatma",
                            duration = 10000,
                            label = 'Pantolon satıyorsun...',
                            useWhileDead = false,
                            canCancel = false,
                            controlDisables = {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            },
                            animation = {
                                animDict = "anim@heists@box_carry@",
                                anim = "idle",
                                flags = 49,
                            },
                            prop = {
                                model = "hei_prop_heist_box",
                                bone = 60309,
                                coords = { x = 0.12, y = 0.0, z = 0.001 },
                                rotation = { x = -150.0, y = 0.0, z = 0.0 },
                            },
                        }, function(cancelled)
                            if not cancelled then
                                TriggerServerEvent('erbay-terzi:pantolonsat')
                                exports['mythic_notify']:DoHudText('success', 'Başarıyla pantolon sattın!')
                            else
                                -- Do Something If Action Was Cancelled
                            end
                        end)
                    end
                end
            end
        end
        if GetDistanceBetweenCoords(playercoords, Config.Satmabolgesitshirt.x, Config.Satmabolgesitshirt.y, Config.Satmabolgesitshirt.z, true) < 10 then
            ms = 0
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'terzi' then
                DrawMarker(2, Config.Satmabolgesitshirt.x, Config.Satmabolgesitshirt.y, Config.Satmabolgesitshirt.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4, 0.2, 255, 255, 255, 255, 0, 0, 0, 1, 0, 0, 0)
                if GetDistanceBetweenCoords(playercoords, Config.Satmabolgesitshirt.x, Config.Satmabolgesitshirt.y, Config.Satmabolgesitshirt.z, true) < 2.0 then
                    DrawText3D(Config.Satmabolgesitshirt.x, Config.Satmabolgesitshirt.y, Config.Satmabolgesitshirt.z + 0.4, 'Tavuk eti toplamak icin ~g~E~s~ bas')
                    if IsControlJustPressed(0, 38) then
                        exports['mythic_progbar']:Progress({
                            name = "pantolonsatma",
                            duration = 10000,
                            label = 'Pantolon satıyorsun...',
                            useWhileDead = false,
                            canCancel = false,
                            controlDisables = {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            },
                            animation = {
                                animDict = "anim@heists@box_carry@",
                                anim = "idle",
                                flags = 49,
                            },
                            prop = {
                                model = "hei_prop_heist_box",
                                bone = 60309,
                                coords = { x = 0.12, y = 0.0, z = 0.001 },
                                rotation = { x = -150.0, y = 0.0, z = 0.0 },
                            },
                        }, function(cancelled)
                            if not cancelled then
                                TriggerServerEvent('erbay-terzi:tshirtsat')
                                exports['mythic_notify']:DoHudText('success', 'Başarıyla tshirt sattın!')
                            else
                                -- Do Something If Action Was Cancelled
                            end
                        end)
                    end
                end
            end
        end
        Citizen.Wait(ms)
    end
end)

function CreateBlip()
    if ESX.GetPlayerData() and ESX.GetPlayerData().job and 'terzi' == ESX.PlayerData.job.name then
        blip = AddBlipForCoord(Config.Toplamabolgesikumas.x, Config.Toplamabolgesikumas.y, Config.Toplamabolgesikumas.z)
        SetBlipSprite(blip, 268)
        SetBlipDisplay(blip, 4)
        SetBlipScale  (blip, 0.7)
        SetBlipColour(blip, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Kumaş Toplama')
        EndTextCommandSetBlipName(blip)
        SetBlipAsShortRange(blip, true)
    end
    if ESX.GetPlayerData() and ESX.GetPlayerData().job and 'terzi' == ESX.PlayerData.job.name then
        blip1 = AddBlipForCoord(Config.Islemebolgesikumas.x, Config.Islemebolgesikumas.y, Config.Islemebolgesikumas.z)
        SetBlipSprite(blip1, 268)
        SetBlipDisplay(blip1, 4)
        SetBlipScale  (blip1, 0.7)
        SetBlipColour(blip1, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Kumaş Dikme')
        EndTextCommandSetBlipName(blip1)
        SetBlipAsShortRange(blip1, true)
    end
    if ESX.GetPlayerData() and ESX.GetPlayerData().job and 'terzi' == ESX.PlayerData.job.name then
        blip2 = AddBlipForCoord(Config.Satmabolgesitshirt.x, Config.Satmabolgesitshirt.y, Config.Satmabolgesitshirt.z)
        SetBlipSprite(blip2, 268)
        SetBlipDisplay(blip2, 4)
        SetBlipScale  (blip2, 0.7)
        SetBlipColour(blip2, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Tshirt Satış')
        EndTextCommandSetBlipName(blip2)
        SetBlipAsShortRange(blip2, true)
    end
    if ESX.GetPlayerData() and ESX.GetPlayerData().job and 'terzi' == ESX.PlayerData.job.name then
        blip3 = AddBlipForCoord(Config.Satmabolgesipantolon.x, Config.Satmabolgesipantolon.y, Config.Satmabolgesipantolon.z)
        SetBlipSprite(blip3, 268)
        SetBlipDisplay(blip3, 4)
        SetBlipScale  (blip3, 0.7)
        SetBlipColour(blip3, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Pantolon Satış')
        EndTextCommandSetBlipName(blip3)
        SetBlipAsShortRange(blip3, true)
    end
end

function RefreshBlip()
    if blip then
        RemoveBlip(blip)
        RemoveBlip(blip1)
        RemoveBlip(blip2)
        RemoveBlip(blip3)
    end
end










   

