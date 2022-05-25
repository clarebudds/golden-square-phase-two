def check_grammar(text)
  fail "Not a sentence." if text.empty?
  first_letter_is_uppercase = text[0] == text[0].upcase
  last_character_is_punctuation_end = [".", "!", "?"].include? text[-1] 
  if first_letter_is_uppercase && last_character_is_punctuation_end
    return true
  else
    return false
  end
end