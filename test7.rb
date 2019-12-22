# movies = {
#   Memento: 3,
#   Primer: 4,
#   Ishtar: 1
# }

# puts "What would you like to do?"
# puts "-- Type 'add' to add a movie."
# puts "-- Type 'update' to update a movie."
# puts "-- Type 'display' to display all movies."
# puts "-- Type 'delete' to delete a movie."

# choice = gets.chomp.downcase
# case choice
# when 'add'
#   puts "What movie do you want to add?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "What's the rating? (Type a number 0 to 4.)"
#     rating = gets.chomp
#     movies[title.to_sym] = rating.to_i
#     puts "#{title} has been added with a rating of #{rating}."
#   else
#     puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
#   end
# when 'update'
#   puts "What movie do you want to update?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "Movie not found!"
#   else
#     puts "What's the new rating? (Type a number 0 to 4.)"
#     rating = gets.chomp
#     movies[title.to_sym] = rating.to_i
#     puts "#{title} has been updated with new rating of #{rating}."
#   end
# when 'display'
#   movies.each do |movie, rating|
#     puts "#{movie}: #{rating}"
#   end
# when 'delete'
#   puts "What movie do you want to delete?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "Movie not found!"
#   else
#     movies.delete(title.to_sym)
#     puts "#{title} has been removed."
#   end
# else
#   puts "Sorry, I didn't understand you."
# end


#-------------------------------------


# strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# # Add your code below!

# symbols=[]

# strings.each do |s|
#   symbols.push(s.to_sym)
# end

# print symbols

#-------------------------------------


grades = { alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.select { |name, grade| grade <  97 }
# ==> { :bob => 92, :chris => 95 }

grades.select { |k, v| k == :alice }
# ==> { :alice => 100 }

grades.select {|k, v| k == :dave }
#-------------------------------------

# require 'benchmark'

# string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
# symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

# string_time = Benchmark.realtime do
#   100_000.times { string_AZ["r"] }
# end

# symbol_time = Benchmark.realtime do
#   100_000.times { symbol_AZ[:r] }
# end

# puts "String time: #{string_time} seconds."
# puts "Symbol time: #{symbol_time} seconds."

#--------------------------------------------


# movie_ratings = {
#   memento: 3,
#   primer: 3.5,
#   the_matrix: 5,
#   truman_show: 4,
#   red_dawn: 1.5,
#   skyfall: 4,
#   alex_cross: 2,
#   uhf: 1,
#   lion_king: 3.5
# }
# # Add your code below!

# good_movies = movie_ratings.select do |movie, rating|
#   if rating > 3
#     puts "#{movie}: #{rating}"
#   end
# end

# movie_ratings.each_key {|movie| puts movie}


#--------------------------------------------



# case greeting when "english" then puts "Hello!" when "french" then puts "Bonjour!" when "german" then puts "Guten Tag!" when "finnish" then puts "Haloo!" else puts "I don't know that language!" end

#case language when "Ruby" then puts "Ruby is great for web apps!" when "Python" then puts "Python is great for science." when "JavaScript" then puts "JavaScript makes websites awesome." when "HTML" then puts "HTML is what websites are made of!" when "CSS" then puts "CSS makes websites pretty." else puts "I don't know that language!" end

#puts 4 > 5 ? "4 is less than 5!" : "4 is more than 5"


# def multiple_of_three(n)
#   n % 3 == 0 ? "True" : "False"
# end

# puts multiple_of_three(3)

#--------------------------------------------

#"L".upto("P") {|letter| puts letter}


#--------------------------------------------

#puts "One is less than two!" if 1 < 2


# if 1 < 2
#   puts "One is less than two!"
# else
#   puts "One is not less than two."
# end

# VS

# puts 1 < 2 ? "One is less than two!" : "One is not less than two."


#--------------------------------------------



# fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# # Add your code below!

# fibs.collect! {|num| num*2}
# puts fibs


#--------------------------------------------


# Yield basics

# def yield_name(name)
#   puts "In the method! Let's yield."
#   yield("Kim")
#   puts "In between the yields!"
#   yield(name)
#   puts "Block complete! Back in the method."
# end

# yield_name("Eric") { |n| puts "My name is #{n}." }

# # Now call the method with your name!

# yield_name("Kat"){|k| puts "My name is #{k}"}


#--------------------------------------------

# def double(number)
#   yield(number)
# end

# puts double(4){|num| num*2}

#--------------------------------------------

#PROC

# cube = Proc.new { |x| x ** 3 }

# [1, 2, 3].collect!(&cube)
# # ==> [1, 8, 27]
# [4, 5, 6].map!(&cube)
# # ==> [64, 125, 216]



# floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# # Write your code below this line!

# round_down = Proc.new {|x| x.floor}

# # Write your code above this line!
# ints = floats.collect(&round_down)
# print ints



# group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
# group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
# group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# over_4_feet = Proc.new{|height| height >= 4}

# can_ride_1 = group_1.select(&over_4_feet)
# can_ride_2 = group_2.select(&over_4_feet)
# can_ride_3 = group_3.select(&over_4_feet)

# puts can_ride_1
# puts can_ride_2
# puts can_ride_3


# PASS PROC INTO METHOD
# def greeter
#   yield
# end

# phrase = Proc.new{puts "Hello there!"}
# greeter(&phrase)



# hi = Proc.new{puts "Hello!"}
# hi.call


#STRING <> NUMBERS VIA CONVERTING SYMBOLS >> PROC
# numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# strings_array = numbers_array.map(&:to_s)

# print strings_array



#LAMBDA

# def lambda_demo(a_lambda)
#   puts "I'm the method!"
#   a_lambda.call
# end

# lambda_demo(lambda { puts "I'm the lambda!" })


#SYMBOLS CHECKER
# my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# # Add your code below!

# symbol_filter = lambda {|x| x.is_a? Symbol}
# symbols = my_array.select(&symbol_filter)
# puts symbols


# odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
# ints = odds_n_ends.select{|x| x.is_a? Integer}
# puts ints



# ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# under_100 = Proc.new{|x| x < 100 }
# youngsters = ages.select(&under_100)
# puts youngsters


#-------------------------

# crew = {
#   captain: "Picard",
#   first_officer: "Riker",
#   lt_cdr: "Data",
#   lt: "Worf",
#   ensign: "Ro",
#   counselor: "Troi",
#   chief_engineer: "LaForge",
#   doctor: "Crusher"
# }
# # Add your code below!

# first_half = lambda {|job,name| name < "M"}
# a_to_m = crew.select(&first_half)

# puts a_to_m



# crew = {
#   captain: "Picard",
#   first_officer: "Riker",
#   lt_cdr: "Data",
#   lt: "Worf",
#   ensign: "Ro",
#   counselor: "Troi",
#   chief_engineer: "LaForge",
#   doctor: "Crusher"
# }
# # Add your code below!

# first_half = lambda {|job,name| name < "M"}
# a_to_m = crew.select(&first_half)
# puts a_to_m.values.join("\n") + ("\n\n") + a_to_m.keys.join("\n")


