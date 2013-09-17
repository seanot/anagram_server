class Word < ActiveRecord::Base

  def self.anagram(sorted_word)
    # Word.where(sorted_word: sort_word)
    Word.select(:word).find_all_by_sorted_word(sorted_word)
  end

  def self.sort_and_search(user_word)
    sorted_word = user_word.split("").sort.join
    self.anagram(sorted_word)
  end

end

