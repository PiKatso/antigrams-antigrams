# ruby code
class String
  define_method(:anagram?) do |word|
     if(self.downcase.chars.sort == word.downcase.chars.sort)
        true
        else
        false
      end
    end

  def palidrome?(word)


  end
end
