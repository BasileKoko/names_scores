require_relative 'names_scores'

name_score = NameScore.new
names = name_score.file_to_array('names.txt')
sorted_names = name_score.sort_names(names)
names_values = name_score.name_value(sorted_names)
names_positions = name_score.name_position(sorted_names)
names_values_names_positions = name_score.name_value_name_position(names_values, names_positions)
names_scores = name_score.name_score(names_values_names_positions)
puts name_score.total_name_score(names_scores)
