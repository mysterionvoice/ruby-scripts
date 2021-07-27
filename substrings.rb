def substrings(string, dictionary)
    subs = Hash.new
    dictionary.each do |word|
      subs[word] = string.downcase.scan("#{word}").count if string.downcase.include?(word)
    end
    subs
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  puts substrings("Below", dictionary)
  puts substrings("Howdy partner, sit down! How's it going?", dictionary)