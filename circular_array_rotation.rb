#!/bin/ruby
# given an array that is rotated k times, what is the ith element of the rotated array

def rotate(array, k)
    k %= array.length
    array[-k..-1] + array[0...-k]
end

n,k,q = gets.strip.split(' ')
n = n.to_i
k = k.to_i
q = q.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
for a0 in (0..q-1)
    m = gets.strip.to_i
    rotated_array = rotate(a,k) # perform 'k' rotations on array 'a'
    puts rotated_array[m] # prints mth element of the rotated array
end


