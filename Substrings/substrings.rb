dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  def substrings(string, dictionary)
    result = {}
    dictionary.each do |word|
      occurrences = 0
      # Split the string into an array of words
      words = string.downcase.split
      # Check if each word in the array includes the word from the dictionary
      words.each do |w|
        occurrences += 1 if w.include?(word)
      end
      result[word] = occurrences if occurrences > 0
    end
    result
  end
  
  puts substrings("Below", dictionary)
  puts substrings("Howdy partner, sit down! How's it going?", dictionary)
