# ou are given a sequence of  integers, n. Each element in the sequence is distinct and satisfies
# 1 <= x <= n. For each x where <= x <= n, find any integer  such that p(p(y)) = x and print
# the value of  y on a new line.

# Input Format

# The first line contains an integer, n, denoting the number of elements in the sequence.
# The second line contains  space-separated integers denoting the respective values of
# the array

# Sample Input

# 3
# 2 3 1
# Sample Output

# 2
# 3
# 1


n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

step = 1
while step <= n
  inner = arr.index(step)
  # inner and outer are incremented by 1 to reflect the 1 based indexing of the sample
  outer = arr.index(inner + 1)
  puts outer + 1
  step += 1
end
