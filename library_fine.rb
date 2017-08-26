# Your local library needs your help! Given the expected and actual return dates for a library
# book, create a program that calculates the fine (if any). The fee structure is as follows:

# If the book is returned on or before the expected return date, no fine will be charged
# (i.e.: fine = 0.  If the book is returned after the expected return day but still within the same
# calendar month and year as the expected return date, the fine is 15 per day late.
# If the book is returned after the expected return month but still within the same calendar
# year as the expected return date, the fine is 500 per month late .
# If the book is returned after the calendar year in which it was expected, there is a fixed
# fine of 1000.

# Input Format

# The first line contains  space-separated integers denoting the respective , , and
# on which the book was actually returned.
# The second line contains  space-separated integers denoting the respective , , and
# on which the book was expected to be returned (due date).

#!/bin/ruby

# d1,m1,y1 = gets.strip.split(' ')
# d1 = d1.to_i
# m1 = m1.to_i
# y1 = y1.to_i
# d2,m2,y2 = gets.strip.split(' ')
# d2 = d2.to_i
# m2 = m2.to_i
# y2 = y2.to_i

# def late_charge(d1, m1, y1, d2, m2, y2)
#   if y1 > y2
#     10000
#   elsif y1 < y2
#     0
#   elsif m1 > m2
#     500 * (m1 - m2)
#   elsif m1 < m2
#     0
#   elsif d1 > d2
#     15 * (d1 - d2)
#   else
#     0
#   end
# end



def late_charge(d1, m1, y1, d2, m2, y2)
  unless y1 == y2
    return y1 > y2 ? 10000 : 0
  end

  unless m1 == m2
    return m1 > m2 ? 500 * (m1 - m2) : 0
  end

  return d1 > d2 ? 15 * (d1 - d2) : 0
end


p late_charge(2,7,2015,1,2,2014)



