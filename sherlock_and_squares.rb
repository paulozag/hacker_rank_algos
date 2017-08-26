# Watson gives two integers (a and b) to Sherlock and asks if he can count the number of square integers between a and b (both inclusive).

# Note: A square integer is an integer which is the square of any integer. For example, 1, 4, 9,
# and 16 are some of the square integers as they are squares of 1, 2, 3, and 4, respectively.

# Input Format

# The first line contains T, the number of test cases. T test cases follow, each in a new line.
# Each test case contains two space-separated integers denoting A and B.

# Output Format

# For each test case, print the required answer in a new line.

# Sample Input

# 2
# 3 9
# 17 24
# Sample Output

# 2
# 0


def inclusive_squares(a, b)
  first_square = (a ** 0.5).ceil
  count = 0
  while (first_square ** 2) <= b
    count += 1
    first_square += 1
  end
  count
end

t = gets.strip.to_i

t.times do
  a = gets.strip.split(' ').map(&:to_i)
  puts inclusive_squares(a[0], a[1])
end



# p inclusive_squares(5,37)
