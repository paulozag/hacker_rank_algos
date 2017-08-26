def anagram_distance str1, str2
  hash1 = generate_freq_hash str1
  hash2 = generate_freq_hash str2
  distance = 0

  hash1.each do |k, v|
    distance += (v - (hash2[k] || 0)).abs
    hash2.delete k
  end

  hash2.each do |k, v|
    distance += v
  end

  distance
end

def generate_freq_hash str
  char_frequency = Hash.new
  str.split('').each do |char|
    if char_frequency[char]
      char_frequency[char] += 1
    else
      char_frequency[char] = 1
    end
  end
  return char_frequency
end


a = 'fcrxzwscanmligyxyvym'
b = 'jxwtrhvujlmrpdoqbisbwhmgpmeoke'



c = generate_freq_hash a
d = generate_freq_hash b

c.keys.sort.each do |key|
  p "#{key}: #{c[key]}"
end

p '******************'
d.keys.sort.each do |key|
  p "#{key}: #{d[key]}"
end









  "a: 1"
  "c: 2"
  "f: 1"
  "g: 0"
  "i: 0"
  "l: 0"
"m: 2"
"n: 1"
"r: 1"
"s: 1"
"v: 1"
"w: 1"
"x: 2"
"y: 3"
"z: 1"
"******************"
"b: 2"
"d: 1"
"e: 2"

"h: 2"

"j: 2"
"k: 1"
"l: 1"
"m: 3"
"o: 2"
"p: 2"
"q: 1"
"r: 2"
"s: 1"
"t: 1"
"u: 1"
"v: 1"
"w: 2"
"x: 1"