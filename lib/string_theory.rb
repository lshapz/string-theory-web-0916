def sort_by_appearance(characters_to_sort, long_text)
  # code goes here
  char_array = characters_to_sort.split('')

  new_hash = char_array.each_with_object({}) do |item, obj|
    obj[item] = 0
  end

  text_array = long_text.split('')

  text_array.each do |character|
    if new_hash[character]
      new_hash[character] += 1
    end
  end

  last_array = new_hash.sort_by do |_key, value|
    value
  end

  last_array.reverse.to_h.keys.join('')


end