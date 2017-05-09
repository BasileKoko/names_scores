require 'names_scores'

describe NameScore do
  describe '#file_to_array' do
    it 'should convert file to an array' do
      expect(subject.file_to_array('../names_scores/names_test.txt')).to eq ["TOM", "SHEER", "JERI"]
    end
  end

  describe '#sort_names' do
    it 'should sort the names by alphabetical order' do
      names_array = ["TOM", "SHEER", "JERI"]
      expect(subject.sort_names(names_array)).to eq ["JERI", "SHEER", "TOM"]
    end
  end

  describe '#name_value' do
    it 'should return the value of each name' do
      sorted_names_array = ["JERI", "SHEER", "TOM"]
      expect(subject.name_value(sorted_names_array)).to eq [42, 55, 48]
    end
  end

  describe '#name_position' do
    it 'should return the position of each name' do
      sorted_names_array = ["JERI", "SHEER", "TOM"]
      expect(subject.name_position(sorted_names_array)).to eq [1, 2, 3]
    end
  end
  
  describe '#name_value_and_position' do
    it 'should return array with name value and name position' do
      name_value = [42, 55, 48]
      name_position = [1, 2, 3]
      expect(subject.name_value_and_position(name_value, name_position)).to eq [[42, 1], [55, 2], [48, 3]]
    end
  end
end
