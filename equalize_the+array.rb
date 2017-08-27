# Karl has an array of  integers defined as . In one operation, he can delete any element from
# the array.

# Karl wants all the elements of the array to be equal to one another. To do this, he must
# delete zero or more elements from the array. Find and print the minimum number of deletion
# operations Karl must perform so that all the array's elements are equal.

n = gets.strip.to_i
array = gets.strip.split(' ').map(&:to_i)

def equalize_array(array, n)
  histo = Hash.new(0) # creates a frequency hash for all values in array
  array.each {|val| histo[val] += 1}

  most_freq_val = array.first # sets initial value and count for most frequent value
  max_count = histo[most_freq_val]

  histo.keys.each do |key| # finds most frequent key
    if histo[key] > max_count
      max_count = histo[key]
      most_freq_val = key
    end
  end

  n - histo[most_freq_val] # total - number of times most frequent appears in array
end

puts equalize_array(array, n)