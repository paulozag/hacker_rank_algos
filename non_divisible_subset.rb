# Given a set,S , of n distinct integers, print the size of a maximal subset, S', of S
# where the sum of any  numbers in S' is not evenly divisible by k.

# Input Format

# The first line contains 2 space-separated integers, n and k, respectively.
# The second line contains n space-separated integers (we'll refer to the ith value as k[i])
# describing the unique values of the set.

# create k-length array called modulos
# loop thru array modding each value by k and increase the count in
#   modulos[] corresponding to that remainder by 1
# go thru modulo array summing up the greater of each pair of modulos that equal k
# for module k/2 and modulo 0, one element may be used from each

n, k = gets.strip.split(' ').map(&:to_i)
arr = gets.strip.split(' ').map(&:to_i)

remainders = Array.new(k, 0)
arr.each {|value| remainders[value % k] += 1}
count = 0
count += 1 unless   remainders[0] == 0 # a maximum of 1 of those modulos whose value are zero or
count += 1 if       k.even? && remainders[k/2] != 0 # k/2 can be included

head = 1
tail = k - 1
while head < tail
  # you may not have both of these modulo numbers present in sub-array
  # so use the numbers there are more of
  count += [remainders[head], remainders[tail]].max

  tail -= 1
  head += 1
end

puts count