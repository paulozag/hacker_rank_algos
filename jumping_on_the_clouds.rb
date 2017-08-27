Emma is playing a new mobile game involving n clouds numbered from 1 to n-1. A player initially
starts out on cloud 0, and they must jump to cloud n-1. In each step, she can jump from any cloud
to cloud 1 + 1 or i + 2 cloud .

There are two types of clouds, ordinary clouds and thunderclouds. The game ends if Emma jumps
onto a thundercloud, but if she reaches the last cloud (i.e., n-1 ), she wins the game!



Can you find the minimum number of jumps Emma must make to win the game? It is guaranteed that
clouds c[0] and c[n-1] are ordinary-clouds and it is always possible to win the game.

#!/bin/ruby

n = gets.strip.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)

def cloud_steps(n, c)
  position = 0
  steps = 0
  while position < n - 3 # at n-3 or n-2, sally is one step away from finish
    steps += 1
    position += (c[position + 2] == 0) ? 2 : 1
  end
  steps + 1
end

puts cloud_steps(n, c)
