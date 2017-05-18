def alphabetize(arr)

  esperanto_alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  english_alphabet = " ABabcdefghijklmnopqrstuvwxyz"
  esperanto_hash = {}
  english_hash = {}
  arr2 = []
  arr3 = []

  esperanto_alphabet.each_char.with_index {|ch, idx| esperanto_hash[ch] = english_alphabet[idx]}
  english_alphabet.each_char.with_index {|ch, idx| english_hash[ch] = esperanto_alphabet[idx]}

  arr.each do |el|
    str = ""
    el.each_char {|ch| str << esperanto_hash[ch]}
    arr2 << str
  end

  arr2 = arr2.sort

  arr2.each do |el|
    str = ""
    el.each_char {|ch| str << english_hash[ch]}
    arr3 << str
  end

  arr3

end
