class NameScore

  def file_to_array(file)
    file_content = File.read(file)
    new_file_content = file_content.gsub(/\"/, "").strip
    names = new_file_content.split(',')
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

  def name_value_name_position(names_values, names_positions)
    names_values_names_positions = names_values.zip(names_positions)
  end

  def name_score(names_values_names_positions)
    names_scores = names_values_names_positions.map { |array| array[0] * array[1] }
  end

  def total_name_score(names_scores)
    total_name_scores = names_scores.reduce(:+)
    "The total name scores in the file is: #{total_name_scores}"
  end
end
