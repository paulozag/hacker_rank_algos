n = gets.strip.to_i
raw_string = gets.strip
#puts "raw string: #{raw_string}"
arr = raw_string.split(' ').map(&:to_i)

#puts arr.to_s
#puts arr[0] + arr[1]
step = 1
while step <= n
  inner = arr.index(step)
  outer = arr.index(inner + 1)
  puts outer + 1
  step += 1
end
