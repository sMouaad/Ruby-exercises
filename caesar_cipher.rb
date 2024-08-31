# frozen_string_literal: true

def caesar_cipher(string, shift)
  string.chars.map do |character|
    if character.between?('a', 'z')
      (((character.ord + shift - 'a'.ord) % 26) + 'a'.ord).chr
    elsif character.between?('A', 'Z')
      (((character.ord + shift - 'A'.ord) % 26) + 'A'.ord).chr
    else
      character
    end
  end.join
end
