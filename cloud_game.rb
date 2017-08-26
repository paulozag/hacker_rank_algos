energy = 100
start = 0

while true
  energy -= 1
  position = (position + k) % n
  energy -= 2 if c[position] == 1
  break if position == start
end

puts energy


