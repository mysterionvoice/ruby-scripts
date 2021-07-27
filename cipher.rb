LOWERCASE = ("a".."z")
UPPERCASE = ("A".."Z")

def caesar_cipher(string, shift)
  
  ciphertext = string.chars.map do |character| 
    if UPPERCASE.include?(character)
      ((character.ord + shift - 65) % 26) + 65
    elsif LOWERCASE.include?(character)
      ((character.ord + shift - 97) % 26) + 97
    else
      character
    end
  end
  ciphertext.map { |char| char.chr }.join
end

puts caesar_cipher("I am the vestibule.", 5)