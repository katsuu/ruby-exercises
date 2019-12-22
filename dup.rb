def duplicate_count(text)
    count = 0
    letter = text.downcase.chars()
    puts "First split letter: #{letter}"
    

    letter.each do |x|
      if text.count(x) > 1
        puts "text before: #{text}"
        text = text.downcase.delete(x)
        puts "text after: #{text}"
        letter = text.chars()
        count += 1
      end
    end
return count
end

duplicate_count("abcdeaB")



