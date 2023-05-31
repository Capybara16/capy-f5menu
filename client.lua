ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

lib.registerContext({
    id = 'menuf5',
    title = 'Kiegészitő',
    options = {
        -- {
        --     title = '🎒 Portefeuille',
        --     arrow = true,
        --     icon = 'bars',
        --     menu = 'portefeuille',   
        -- },
        {
            title = '👕 Kiegészitő Menu',
            arrow = true,
            icon = 'bars',
            menu = 'vetements',   
        },
    }
})

lib.registerContext({
    id = 'vetements',
    title = 'Kiegészitő',
    options = {
        {
            title = '👕Poló',
            description = 'Vegye le a polót',
            event = 'remove:torso',
        },
        {
            title = '👖Nadrág',
            description = 'Vedd le a nadrágodat',
            event = 'remove:pants',
        },
        {
            title = '👞Cipő',
            description = 'Ved le a cipőd',
            event = 'remove:shoes',
        },
        {
            title = '😷Maszk',
            description = 'Ved le a maszkod',
            event = 'remove:mask',
        },
        {
            title = '🧢Sapka',
            description = 'Ved le a sapkát',
            event = 'remove:hat',
        },
        {
            title = '💼Táska',
            description = 'Ved le a táskád',
            event = 'remove:bag',
        },
        {
            title = '👓Szemüveg',
            description = 'Ved le a szemüveget',
            event = 'remove:glasses',
        },
        {
            title = '🦺Mellény',
            description = 'Ved le a mellényt',
            event = 'remove:vest',
        },
        {
            title = '👂Fülbevalók',
            description = 'Ved le a Fülbevalót',
            event = 'remove:ears',
        },
        {
            title = '⛓️Nyaklánc',
            description = 'Ved le a nyakláncot',
            event = 'remove:chain',
        },
        {
            title = 'Vissza',
            menu = 'menuf5',
        },
        
    }
})


-- lib.registerContext({
--     id = 'portefeuille',
--     title = 'Porte Feuille',
--     options = {
--         {
--             title = '📎 Carte identité',
--             event = 'montrer:identity'
--         },
--         {
--             title = '📎 Permis Conduire',
--             event = 'montrer:drive'
--         },
--         {
--             title = '📎 Permis Arme',
--             event = 'montrer:ppa'
--         },
--         {
--             title = 'Go Back',
--             menu = 'menuf5',
--         },
--     }
-- })

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      if IsControlJustPressed(0, 166) then -- para baguhin ang menu key https://docs.fivem.net/docs/game-references/controls/ pour changer la touche, to change the key
        lib.showContext('menuf5')
      end
    end
  end)
  