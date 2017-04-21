# ruby code
class String
  define_method(:anagram?) do |word|
    word1 = self.downcase.split("").sort
    word2 = word.downcase.split("").sort
     if(word1 == word2)
        true
        else
        false
      end
    end
end
