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

  def palidrome?
    if self.downcase == self.downcase.reverse
      true
      "it is a palidrome"
    else
      false
      "it is not a palidrome"
    end
  end
end
