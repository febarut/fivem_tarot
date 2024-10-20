local QBCore = exports['qb-core']:GetCoreObject()

local function DrawTarotCard(drawnCards)
    local drawnSet = {}
    local availableCards = {}

    for _, drawnCard in ipairs(drawnCards) do
        drawnSet[drawnCard.name] = true
    end

    for _, card in ipairs(Config.TarotCards) do
        if not drawnSet[card.name] then
            table.insert(availableCards, card)
        end
    end

    if #availableCards > 0 then
        local cardIndex = math.random(1, #availableCards)
        local card = availableCards[cardIndex]
        card.image = card.name .. '.png'
        return card
    end

    return nil
end

local function DrawTarotCards()
    local drawnCards = {}
    while #drawnCards < 4 do
        local card = DrawTarotCard(drawnCards)
        if not card then break end
        table.insert(drawnCards, card)
    end
    return drawnCards
end

QBCore.Functions.CreateUseableItem('tarot_cards', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end

    local cards = DrawTarotCards()

    TriggerClientEvent('tarot:showCards', source, cards)
end)

