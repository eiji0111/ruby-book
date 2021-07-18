def gbc(a, b)
  if b == 0
    a
  else
    gbc(b, a % b)
  end
end

puts gbc(976, 427)

