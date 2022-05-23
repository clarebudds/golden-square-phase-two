def calculate_reading_time(text)
  words = text.split(" ")
  return (words.length / 200.to_f).ceil
end

# Was refactored from:

# def calculate_reading_time(text)
#   words = text.split(" ")
#   if words.length == 0
#     return 0
#   elsif words.length <= 200
#     return 1
#   elsif words.length <= 300
#     return 2
#   elsif words.length <= 5000
#     return 25
#   end
# end
