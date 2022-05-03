def caesar(str, number, code = [])
  p 'number must be between -26 & 26' if number > 26 || number < -26
  lower_alpha = ('a'..'z').to_a
  upper_alpha = ('A'..'Z').to_a

  str.split('').each do |char|
    if (lower_alpha.include? char) && number.positive?
      code.push(lower_alpha[lower_alpha.index(char) + number - lower_alpha.size])

    elsif (upper_alpha.include? char) && number.positive?
      code.push(upper_alpha[upper_alpha.index(char) + number - upper_alpha.size])

    elsif (lower_alpha.include? char) && number.negative?
      code.push(lower_alpha[lower_alpha.index(char) + number])

    elsif (upper_alpha.include? char) && number.negative?
      code.push(upper_alpha[upper_alpha.index(char) + number])
    else
      code.push(char)
    end
  end
  code.join('')
end
