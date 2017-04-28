class String
  #code for testing anagram/matching letters
  define_method(:anagram?) do |word|
   if(self.downcase.chars.sort == word.downcase.chars.sort)
      true
      return "yay, an anagram!"
    else
      false
      return "not an anagram"
    end
  end

  #code for testing antigram/no matching letters
  #used string interpolation to create reg ex that worked and eliminated the need to call methods on my input
  define_method(:antigram?) do |word|
    letters1 = self
    letters2 = word
      output = "antigram"
      if letters1.match(/[#{letters2}]/i)
        output ="not an antigram"
      end
    output
  end

  #code for testing palidrome/matching letters & order
  def palidrome?
    if self.downcase == self.downcase.reverse
      true
      "yay, a palidrome!"
    else
      "not a palidrome"
    end
  end

  #code for testing valid word
  define_method(:valid_word) do
    letters = self.downcase
    output = "please enter a valid word"
      if letters.match(/[aeiouy]/)
        true
        output = "valid word"
      end
    output
  end

  #code for removing extra spaces, symbols, etc.
  define_method(:clean_string) do
    modified_string = self.downcase.gsub(/[^A-Za-z]/,"") #(/[^[:alpha:]]/,"") also works
  end
end
