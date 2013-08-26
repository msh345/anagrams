require_relative '../app/models/word.rb'

File.open('/usr/share/dict/words','r').each do |word|
	Word.create(:word => word.chomp, :sorted_word => word.chomp.chars.to_a.sort.join)
end
