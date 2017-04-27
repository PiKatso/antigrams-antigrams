# ruby code
class String
  #code for testing anagram/matching letters
  define_method(:anagram?) do |word|
     if(self.downcase.chars.sort == word.downcase.chars.sort)
        true
        return "it is an anagram"
      else
        false
        return "it is not an anagram"
      end
    end

  #code for testing antigram/no matching letters
  define_method(:antigram?) do |word|
    letters1 = self.downcase.chars.sort
    letters2 = word.downcase.chars.sort
    letters1.each() do |lets|
      if letters2.include?(lets)
        return "this is not an antigram"
      else()
        return "you have got yourself and antigram"
      end
    end
    # output
  end

  #code for testing palidrome/matching letters & order
  def palidrome?
    if self.downcase == self.downcase.reverse
      "it is a palidrome"
    else
      "it is not a palidrome"
    end
  end

  #code for testing valid word? FIX ME!!!
  define_method(:valid_word) do
    letters = self.downcase.split("")
    # output = "please enter a valid word"
    #   if letters =~ /aeiouy/
    #     output = "it is a valid word"
    #   end
    # output
    vowels = ["a","e","i","o","u","y"]
    output = "please enter a valid word"
    letters.each() do |vowels|
      if letters.include?(vowels)
        output = "it is a valid word"
      end
    end
    output
  end

  #code for removing extra spaces, symbols, etc.
  define_method(:clean_string) do
    input_mod = self.gsub(/[[:alpha:]]/ )
    # (/[^A-Za-z]/,'')
  end
end
