def greeter(name)
  puts "Greetings, #{name}"
end

def by_three?(number)
  if number % 3 == 0
    return true
  else
  	return false
  end
end

greeter("Kat")
puts by_three?(6)

