# ruby code
class String
  define_method(:anagram?) do |word|
     if(self.downcase.chars.sort == word.downcase.chars.sort)
        true
        return "it is an anagram"
      else
        false
        return "it is not an anagram"
      end
    end

  define_method(:antigram?) do |word|
    if(self.downcase.chars.sort != word.downcase.chars.sort)
      return "you have got yourself and antigram"
    else
      return "this is not an antigram"
    end
  end

  def palidrome?
    if self.downcase == self.downcase.reverse
      "it is a palidrome"
    else
      "it is not a palidrome"
    end
  end

  define_method(:valid_word?) do  #fix me!!
    lets = self.downcase.split("")
    output_lets = []
    lets.each() do |input|
    word = input.downcase
    if word.include?('a') || word.include?('e') || word.include?('i') || word.include?('o') || word.include?('u') || word.include?('y')
      return "it is a valid word"
    else
      return "please enter a valid word"
    end
  end
  end
end
