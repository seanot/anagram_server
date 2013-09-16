

File.open('db/words', 'r').each_line do |line|
    Word.create(word: line.chomp)
end
