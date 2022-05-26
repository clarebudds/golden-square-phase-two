class GrammarStats
  def initialize
    @true_results = 0
    @false_results = 0
  end

  def check(text)
    fail "Not a sentence." if text.empty?
    first_letter_is_uppercase = text[0] == text[0].upcase
    last_character_is_punctuation_end = [".", "!", "?"].include? text[-1] 
    if first_letter_is_uppercase && last_character_is_punctuation_end
      @true_results += 1
      return true
    else
      @false_results += 1
      return false
    end
  end
  # text is a string
  # Returns true or false depending on whether the text begins with a capital
  # letter and ends with a sentence-ending punctuation mark.
  
  def percentage_good
    total_results = @true_results + @false_results
    percentage = @true_results / total_results.to_f * 100
    return percentage
  # Returns as an integer the percentage of texts checked so far that passed
  # the check defined in the `check` method. The number 55 represents 55%.
  end
end