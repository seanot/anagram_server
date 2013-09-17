

File.open('db/words', 'r').each_line do |line|
    Word.create(word: line.chomp, sorted_word: line.chomp.downcase.split("").sort.join)
end
