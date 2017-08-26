# You have a string, , of lowercase English alphabetic letters. You can perform two types of operations on :

# Append a lowercase English alphabetic letter to the end of the string.
# Delete the last character in the string. Performing this operation on an empty string results in an empty string.
# Given an integer, , and two strings,  and , determine whether or not you can convert  to  by performing exactly  of the above operations on . If it's possible, print Yes; otherwise, print No.

# Input Format

# The first line contains a string, , denoting the initial string.
# The second line contains a string, , denoting the desired final string. The third line contains an integer, , denoting the desired number of operations.


s = gets.strip      # string 1
t = gets.strip      # string 2
k = gets.strip.to_i # steps

def transform(s,t,k)
  return "Yes" if k >= s.length + t.length
        # if k is large enough that s can be deleted to nothing and rebuilt to t, delete can be called an infinite number of times before the string is built back up

  # find 'index of differentiation'
  index = 0
  # proceed thru both strings until their 'index(th)' chars are no longer equal
  # one of the strings must be deleted to this index and be rebuilt into the other string
  # it works the same whether you delete s or t
  while s[index] == t[index]
    index += 1
    break if s[index].nil? && t[index].nil?
  end

  min_shifts = (s.length - index) + (t.length - index) # bare minimum appends or deletes to have them equalize

  if k < min_shifts || ((k-min_shifts) % 2 == 1)
    # because a character can be added and immediately deleted, any even number of times above the minimum will satisfy the k constraint
    "No"
  else
    "Yes"
  end

end

puts transform(s,t,k)