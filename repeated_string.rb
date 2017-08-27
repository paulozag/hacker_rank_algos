# Lilah has a string, s, of lowercase English letters that she repeated infinitely many times.

# Given an integer, n, find and print the number of letter a's in the first n letters of Lilah's
# infinite string.

# Input Format

# The first line contains a single string, s.
# The second line contains an integer, n.

# Sample Input 0

# aba
# 10
# Sample Output 0

# 7
# Explanation 0
# The first  letters of the infinite string are abaabaabaa. Because there are  a's, we print  on a new line.

# Sample Input 1

# a
# 1000000000000
# Sample Output 1

# 1000000000000
# Explanation 1
# Because all of the first  letters of the infinite string are a, we print  on a new line.


#!/bin/ruby

s = gets.strip
n = gets.strip.to_i

def repeated_string s, n
  # there are q full sets of string s in the first n elements of the infinite string
  # with the first r chars of s left over.  q * toal number of a's in s, + the number
  # of a's in the remaining r characters
  q, r = n.divmod(s.length)
  q * get_a_count(s) + get_a_count(s[0...r])
end

def get_a_count string
  sum = 0
  string.length.times {|i| sum += 1 if string[i] == 'a'}
  sum
end

puts repeated_string(s,n)

