# ruby ./script.rb

def caesar(str, number)
    lower_alpha = ('a'..'z').to_a 
    upper_alpha = ('A'..'Z').to_a 
    code = []
  
    str.split('').each do |char|
      if lower_alpha.include? char
        code.push(lower_alpha[lower_alpha.index(char) + number - lower_alpha.size])
      elsif upper_alpha.include? char
        code.push(upper_alpha[upper_alpha.index(char) + number - upper_alpha.size])
      else
        code.push(char)
      end
    end
    puts code.join('')
  end
  
    caesar("My name is ~ Stranger !", 1)