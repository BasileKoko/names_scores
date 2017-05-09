class NameScore

 def file_to_array(file='names.txt')
   read_file = File.read(file)
   remove_quote = read_file.gsub(/\"/, "").strip
   names_array = remove_quote.split(',')
 end
end
