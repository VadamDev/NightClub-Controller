function setBundleOutput(index)
  rs.setBundledOutput("right", index)
  shell.run("rednet")
end

function turnAllOn()
  setBundleOutput(colors.combine(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048))
end

while true do
  setBundleOutput(0)
  sleep(0.25)
  turnAllOn()
  sleep(0.25)
  setBundleOutput(0)
  sleep(0.25)
  turnAllOn()
  sleep(0.25)
end
