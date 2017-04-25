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

  define_method(:clean_string) do
    input_mod = self.gsub!(/[^0-9A-Za-z]/,'')
  end
end
