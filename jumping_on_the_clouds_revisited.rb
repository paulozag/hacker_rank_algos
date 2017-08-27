=begin
Aerith is playing a cloud game! In this game, there are n clouds numbered sequentially from 0 to n-1 . Each cloud is either an ordinary cloud or a thundercloud.

Aerith starts out on cloud  with energy level of 100 . She can use 1 unit of energy to make a jump of k size  to cloud (i + k) % n, and she jumps until she gets back to cloud 0. If Aerith lands on a thundercloud, her energy () decreases by 2 additional units. The game ends when Aerith lands back on cloud  0.

Given the values of n, k, and the configuration of the clouds, can you determine the final value of  after the game ends?
=end

#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)

energy = 100
start = 0
position = start

while true
  energy -= 1 # cost of moving
  position = (position + k) % n # moves k clouds, looping back to zero if exceeds n -1
  energy -= 2 if c[position] == 1 # thundercloud!
  break if position == start
end

puts energy