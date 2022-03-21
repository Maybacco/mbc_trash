
local function RegisterMarkers()
    for k, v in pairs(Config.TrashBarrels) do
        local markerName = "mbc_trash" .. k
        TriggerEvent('gridsystem:registerMarker', {
            name = markerName,
            pos = v,
            scale = vector3(1.0, 1.0, 1.0),
            size = vector3(5.0,5.0,5.0),
            msg = Language[Config.CurrentLocale]['trashbarrel'],
            show3D = true,
            hint = Language[Config.CurrentLocale]['open'],
            promptName = Language[Config.CurrentLocale]['trashbarrel'],
            showPrompt = true,
            action = function()
                TriggerServerEvent("inventory:server:OpenInventory", "stash", markerName)
            end,
            })
    end
end


Citizen.CreateThread(function ()
    RegisterMarkers()
end)