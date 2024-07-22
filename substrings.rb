def substrings(string, dictionary)  
  hash_result = {}
  # my code prior to knowing the existence of String#scan method
  # dictionnary.map { |value| {value.downcase=>string.downcase.split.reduce(0){|sum, element| if element.include?(value.downcase) then sum + 1 else sum end }} if string.downcase.include?(value.downcase)}.compact.each { |value| hash_result[value.keys[0]] = value.values[0] }
  dictionary.map { |value| if !(x = string.downcase.scan(value)).empty? then {value=>x.size} end}.compact.each { |value| hash_result[value.keys[0]] = value.values[0] }
  hash_result

end
p substrings("Howdy partner, sit down! How's it going?",["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])