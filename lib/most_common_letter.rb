def get_most_common_letter(text)
  text = text.delete(" ") #removes the empty whitespace from the string
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[0][0]
  # p counter #prints out all the key value pairs of the counter hash
  p counter.max_by { |k,v| v } [0][0] #returns the key value pair with the max value
  
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")
# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

# hash.key(hash.values.max)

# hash.each { |k, v| puts k if v == hash.values.max }

# puts *hash[0][0]