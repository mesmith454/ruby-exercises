def coffee_drink?(drink_list)
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
  drink_list.include?('espresso') || drink_list.include?('coffee')
    #|| operator does not work within the () argument passage so do include? twice with || between  
end

def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
  guess_list.any? { |guess| guess == answer}
end

def twenty_first_century_years?(year_list)
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
  year_list.all? { |year| year >= 2001} && year_list.all? { |year| year <= 2100 }
end

def correct_format?(word_list)
  # use #none? to return true when none of the words in the word_list (array) are in upcase
  word_list.none? { |word| word == word.upcase}
    # tried =! but did not return false when an upcase word was included. 
    # word_list does not include a word that equals all upcase
end

def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
  score_list.one? { |k, v| v == perfect_score }
  # when comparing objects in a hash to an object in the block remember to pass both key and value
end
