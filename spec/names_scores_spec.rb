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
end
