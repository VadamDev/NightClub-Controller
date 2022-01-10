function setBundleOutput(index)
  rs.setBundledOutput("right", index)
  shell.run("rednet")
end

while true do
  setBundleOutput(colors.combine(1, 4, 16, 64, 256, 1024))
  sleep(0.5)  
  setBundleOutput(colors.combine(2, 8, 32, 128, 512, 2048))
end
