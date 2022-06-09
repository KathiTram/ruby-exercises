ALPHABET = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26
}

puts "Enter a sentence to be ciphered"
sentence = gets.chomp

puts "How many characters would you like to shift?"
shift = gets.to_i

def caesar_cipher(str, val)
  newWord = ""
  chars = str.split('')
  chars.each { |c|
    if ALPHABET.key?(c) == false
      newWord = newWord + c
    elsif ALPHABET[c] + val > 26
      newVal = (26 - (ALPHABET[c] + val)).abs()
      loopedKey = ALPHABET.key(newVal)
      newWord = newWord + loopedKey
    else
      newChar = ALPHABET[c] + val
      newLetter = ALPHABET.key(newChar)
      newWord = newWord + newLetter
    end
    }
  puts "Your new cipher is:"
  puts newWord
end

caesar_cipher(sentence, shift)
