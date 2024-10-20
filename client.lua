RegisterNetEvent('tarot:showCards')
AddEventHandler('tarot:showCards', function(cards)

    SendNUIMessage({
        action = 'showCards',
        cards = cards
    })

    SetNuiFocus(true, true)
end)

RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false, false)

    cb('ok')
end)