puts "Enter your 1st statement: "
text = gets.chomp
puts "Enter your 2nd statement: "
redact = gets.chomp

words = text.downcase.split(" ")
redacted_word = redact.downcase.split(" ")

new_sentence = ""


words.each do |word|
  if redacted_word.include? word
    new_sentence = new_sentence + "*"*word.size + " "
  else
    new_sentence = new_sentence + word + " "
  end
end

print new_sentence.capitalize


