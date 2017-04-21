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
      true
      return "you have got yourself and antigram"
    else
      false
      return "this is not an antigram"
    end
  end

  def palidrome?
    if self.downcase == self.downcase.reverse
      true
      "it is a palidrome"
    else
      false
      "it is not a palidrome"
    end
  end

  def valid_word?
    word = self.split
    if word.select(/[aeiouy]+/i)
      true
      "it is a valid word"
    else
      false
      "please enter a valid word"
    end
  end
end
