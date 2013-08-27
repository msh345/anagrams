class Word < ActiveRecord::Base

  def return_anagrams
    user_sorted_word = self.sorted_word
    matches = Word.where(:sorted_word => user_sorted_word)
    if matches.length > 1
      matches.map! { |row| row.word if row.word != self.word}
    else
      return "We could not find an anagram for #{self.word}"
    end
    "The anagrams for #{self.word} are #{matches.join(", ")}\nYou're welcome."
  end
end
