m = peripheral.wrap("left")

if(not rednet.isOpen("left")) then 
  rednet.open("left")
end

local id, msg = rednet.receive(0.15)

if(id == nil or msg == nil) then 
  return
end

if(not id == 51) then
  return
end

if(msg == "profile1" or msg == "profile2" or
   msg == "profile3" or msg == "profile4" or
   msg == "profile5") then
  shell.run(msg)
  return
elseif(msg == "shutdown") then  
  os.reboot()
end


