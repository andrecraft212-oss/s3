local monitor = peripheral.find("monitor")
local nativeTerm = term.native()

if not monitor then
    print("No hay monitor conectado. Ejecutando solo localmente...")
    shell.run("examen.lua")
    return
end

monitor.setTextScale(1)
monitor.clear()

-- Creamos una funcion para enviar texto a ambas pantallas simultaneamente
local dualTerm = {}
for k, v in pairs(nativeTerm) do
    dualTerm[k] = function(...)
        if monitor[k] then
            pcall(monitor[k], ...)
        end
        return nativeTerm[k](...)
    end
end

-- Activamos la salida dual y corremos el examen
local oldTerm = term.redirect(dualTerm)

local ok, err = pcall(function()
    shell.run("examen.lua")
end)

term.redirect(oldTerm)

if not ok then
    print("Error durante la ejecucion: " .. tostring(err))
end
