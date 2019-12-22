print "Put your statement here: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"||"c"
  user_input.gsub!(/s/,"th")
  user_input.gsub!(/c/,"s")
elsif user_input == ""
  puts "You haven't entered any string"
else
  puts "There's no 's' or 'c' in your statement"
end


puts "Your new statement is: #{user_input.capitalize!}"


