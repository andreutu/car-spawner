RegisterCommand("spawnveh", function(source, args)
  if (args[1] == null) then
    TriggerEvent("chat:addMessage", {
      color = {255, 0, 0},
      multiline = true,
      args = {"[Error]", "Invalid answer."}
    })
    return
  end  

  local carHash = GetHashKey(args[1])
  local currentPed = PlayerPedId()

  if not IsModelInCdimage(carHash) then
    notify("~r~Couldn't find model.")
    return
  end

  RequestModel(carHash)
  while not HasModelLoaded(carHash) do
    RequestModel(carHash)
    Citizen.Wait(0)
  end

  local x,y,z = table.unpack(GetEntityCoords(currentPed))
  local heading = GetEntityHeading(currentPed)
  local vehicle = CreateVehicle(carHash, x, y, z, heading, true, false)

  SetPedIntoVehicle(currentPed, vehicle, -1)
  SetEntityAsMissionEntity(vehicle, true, true)
  SetModelAsNoLongerNeeded(car)
  notify("~g~Spawned Car Succesfully!")
end, false)

function notify(message)
  BeginTextCommandThefeedPost("STRING")
  AddTextComponentSubstringPlayerName(message)
  EndTextCommandThefeedPostTicker(false, false)
end