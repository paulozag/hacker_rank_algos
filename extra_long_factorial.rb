=begin
this was supposed to challenge other languages whose standard fixed num couldn't handle very
large numbers. I am guessing Ruby does this automatically.
challenge print N!
=end

#!/bin/ruby

n = gets.strip.to_i
digits = (1..n).to_a
puts digits.reduce(&:*)