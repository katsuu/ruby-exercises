puts "Enter your statement: "
text = gets.chomp
words = text.split(" ")

frequencies = Hash.new(0)
words.each do |word|
  frequencies[word] += 1
end
frequencies = frequencies.sort_by do |word,count|
  count
end

frequencies.reverse!

frequencies.each do |word,count|
  puts word + " " + count.to_s
end



# def solution(str)
#   str_array = str.split("")
#   puts str_array

# end

# solution("hello my name is kat")

# # str = "Hello my name is Kat"

# welcome = "hello my name is kat".split(" ")

# puts welcome.class