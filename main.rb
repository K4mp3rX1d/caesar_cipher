def caesar_cipher(text, rotation)
    letters = 'abcdefghijklmnopqrstuvwxyz'
    output = []
    text.each_char do |c|
      if letters.index(c.downcase)
      index = (letters.index(c.downcase) + rotation.to_i) % 26
        if c == c.downcase
          output.push(letters[index])
        else
          output.push(letters[index].upcase)
        end
      else
        output.push(c)
      end
    end
    output.join
  end
        
  
  # > caesar_cipher("What a string!", 5)
  # => "Bmfy f xywnsl!"
