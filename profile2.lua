local i = 1
local lampIndex = 2048

function setBundleOutput(index)
  rs.setBundledOutput("right", colors.combine(i/2, i, i*2))
  shell.run("rednet")
end

while i <= lampIndex do
  setBundleOutput(i)

  if(i >= 2) then
    i = i * 2
  else 
    i = i + 1
  end
  
  sleep(0.25)
end

while i > 1 do
  setBundleOutput(i)

  i = i / 2
  
  sleep(0.25)
end

shell.run("profile2")
