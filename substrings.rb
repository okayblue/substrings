def substrings(string, dictionary)
    # result is a hash with default value of 0
  dictionary.reduce(Hash.new(0)) do |result, dictionary_word|
    string.downcase.split.each do |string_word|
      if string_word.include?(dictionary_word)
        result[dictionary_word] += 1
      end
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# should return { "below" => 1, "low" => 1 }
p substrings("below", dictionary)
# should return { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2,
# "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)