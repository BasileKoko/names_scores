class NameScore

  def file_to_array(file='names.txt')
    read_file = File.read(file)
    remove_quote = read_file.gsub(/\"/, "").strip
    names = remove_quote.split(',')
  end

  def sort_names(names)
  sorted_names = names.sort
  end

  def name_value(sorted_names)
    alphabet = ("A".."Z").to_a
    split_names = sorted_names.map { |name| name.split('') }
    names_letters_values = split_names.map { |name| name.map { |letter| alphabet.index(letter) + 1 } }
    names_values = names_letters_values.map { |value| value.reduce(:+) }
  end

  def name_position(sorted_names)
    names_positions = sorted_names.map { |name| sorted_names.index(name) + 1 }
  end

  def name_value_and_position(names_values, names_positions)
    name_value_name_position = names_values.zip(names_positions)
  end

  def name_score(name_value_name_position)
      names_scores = name_value_name_position.map { |array| array[0] * array[1] }
  end
end
