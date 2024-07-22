def caesar_cipher(string,shift)
  string.split("").map do |character|
    if character.between?("a","z")
      ((character.ord + shift - "a".ord)%("z".ord - "a".ord + 1)+"a".ord).chr
    elsif character.between?("A","Z")
      ((character.ord + shift - "A".ord)%("Z".ord - "A".ord + 1)+"A".ord).chr
    else
      character
    end
  end.join("")
end

puts "Input your string : "
user_input = gets.chomp
puts "Input the number of shifts : "
puts caesar_cipher(user_input,gets.chomp.to_i)