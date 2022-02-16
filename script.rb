require 'pry-byebug' 
# ruby ./script.rb
# binding.pry

def caesar(str, number)
  lower_alpha = ('a'..'z').to_a 
  upper_alpha = ('A'..'Z').to_a
  code = []

  str.split('').each do |char|
    (lower_alpha.include? char) || (upper_alpha.include? char) ? 
    code.push(number + char.ord) : 
    code.push(char)
  end
  puts code
end

  caesar("Zac Williamson ", 4)