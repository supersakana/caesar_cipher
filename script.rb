require 'pry-byebug' 
# ruby ./script.rb
# binding.pry

def caesar(str, number)
  lower_alphabet = ('a'..'z').to_a 
  upper_alphabet = ('A'..'Z').to_a
  string = str.split('')
  code = []

  string.each do |char|
    if (lower_alphabet.include? char) || (upper_alphabet.include? char)
      code.push(number + char.ord)
    else code.push(char)
    end
  end
  puts code
end

  caesar("Zac Williamson ", 4)