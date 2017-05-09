require 'names_scores'

describe NameScore do
  describe '#file_to_array' do
    it 'should convert file to an array' do
      expect(subject.file_to_array('../names_scores/names_test.txt')).to eq ["TOM", "SHEER", "JERI"]
    end
  end

  describe '#sort_names' do
    it 'should sort the names by alphabetical order' do
      names = ["TOM", "SHEER", "JERI"]
      expect(subject.sort_names(names)).to eq ["JERI", "SHEER", "TOM"]
    end
  end

  describe '#name_value' do
    it 'should return the value of each name' do
      sorted_names = ["JERI", "SHEER", "TOM"]
      expect(subject.name_value(sorted_names)).to eq [42, 55, 48]
    end
  end

  describe '#name_position' do
    it 'should return the position of each name' do
      sorted_names = ["JERI", "SHEER", "TOM"]
      expect(subject.name_position(sorted_names)).to eq [1, 2, 3]
    end
  end

  describe '#name_value_and_position' do
    it 'should return array with name value and name position' do
      names_values = [42, 55, 48]
      names_positions = [1, 2, 3]
      expect(subject.name_value_name_position(names_values, names_positions)).to eq [[42, 1], [55, 2], [48, 3]]
    end
  end

  describe '#name_score' do
    it 'should return the score of each name' do
      names_values_names_positions = [[42, 1], [55, 2], [48, 3]]
      expect(subject.name_score(names_values_names_positions)).to eq [42, 110, 144]
    end
  end

  describe '#total_name_score' do
    it 'should return the total name scores in the file' do
      names_scores = [42, 110, 144]
      expect(subject.total_name_score(names_scores)).to eq  296
    end
  end
end
