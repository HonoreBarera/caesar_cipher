#
raw_message = gets.chomp

def caesar_cipher(raw_message, shift_factor=3) # by default shift_factor is 3
  #
  alphabet = ('a'..'z').to_a
  cipher = "" #encryted message
  raw_message.each_char { |char|
    if char == " "
      cipher += " "
    else
      normal_idx = alphabet.find_index(char) # in the alphabet find idx of char from the raw_message
      shifted_idx = (normal_idx + shift_factor) % 26
      cipher += alphabet[shifted_idx]
    end
  }
  return cipher
end

coded_message = caesar_cipher(raw_message) 
puts "Coded message is: #{coded_message}"
