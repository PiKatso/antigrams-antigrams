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

  define_method(:valid_word) do
    letters = self.split("")
    output = ""
    letters.each() do |letter|
    if letter.include?("a") | letter.include?("e") | letter.include?("i")  |letter.include?("o") |letter.include?("u")| letter.include?("y")
       output = "it is a valid word"
    else
       output = "please enter a valid word"
    end
  end
  output
  end
end
