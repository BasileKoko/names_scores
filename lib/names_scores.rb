class NameScore

  def file_to_array(file='names.txt')
    read_file = File.read(file)
    remove_quote = read_file.gsub(/\"/, "").strip
    names_array = remove_quote.split(',')
  end

  def sort_names(names_array)
  sorted_names_array = names_array.sort
  end

  def name_value(sorted_names_array)
    alphabet = ("A".."Z").to_a
    split_each_name = sorted_names_array.map { |name| name.split('') }
    each_name_letter_value = split_each_name.map { |name| name.map { |letter| alphabet.index(letter) + 1 } }
    each_name_value = each_name_letter_value.map { |value| value.reduce(:+) }
  end

  def name_position(sorted_names_array)
    each_name_position = sorted_names_array.map { |name| sorted_names_array.index(name) + 1 }
  end
  def name_value_and_position(name_value, name_position)
    name_value_name_position = name_value.zip(name_position)
  end

end
