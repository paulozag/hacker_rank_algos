# Colleen is turning n years old! Therefore, she has n candles of various heights on her cake,
# and candle i has height height[i]. Because the taller candles tower over the shorter ones,
# Colleen can only blow out the tallest candles.

# Given the height for each individual candle, find and print the number of candles she can successfully blow out.

# Input Format

# The first line contains a single integer, , denoting the number of candles on the cake.
# The second line contains  space-separated integers, where each integer  describes the height of candle .

# Sample Input 0

# 4
# 3 2 1 3
# Sample Output 0

# 2
# Explanation 0

# We have one candle of height , one candle of height , and two candles of height . Colleen only blows out the tallest candles, meaning the candles where . Because there are  such candles, we print  on a new line.

#!/bin/ruby

def birthdayCakeCandles(n, ar)
    tallest = ar.max
    (ar.select {|val| val < tallest }).length
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = birthdayCakeCandles(n, ar)
puts result;