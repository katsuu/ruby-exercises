class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)


#=========OWN PROJ=========

# class Account
#   attr_reader :name, :balance
#   def initialize(name, balance = 100)
#     @name = name
#     @balance = balance
#   end
  
#   def display_balance(pin_number)
#     if pin_number == @pin
#       puts "Balance: #{@balance}"
#     else
#       puts pin_error
#     end
#   end
  
#   def withdraw(pin_number, amount)
#     if pin_number == pin
#       @balance -= amount
#       puts "Withdrew #{amount}. New balance: #{@balance}"
#     else
#       puts pin_error
#     end
#   end
  
#   private
#   def pin
#     @pin = 1234
#   end
  
#   def pin_error
#     return "Access denied: incorrect PIN."
#   end
# end 

# checking_account = Account.new("Kat",2000)
    



#=====================================

# class Person
#   def initialize(name, job)
#     @name = name
#     @job = job
#   end

#     def name
#     @name
#   end
  
#   def job 
#     @job
#   end

# end

# kyle = Person.new("Kyle","Analyst")
# puts kyle.name 
# puts kyle.job 


#=========ATTRIBUTE ACCESSORS==============

# class Person
#   attr_reader :name
#   attr_accessor :job
#   attr_writer :name
  
#   def initialize(name, job)
#     @name = name
#     @job = job
#   end

# end

# kyle = Person.new("Kyle","Analyst")
# puts kyle.name
# kyle.name = "Kylie" 
# puts kyle.name
# puts kyle.job 

#=========MODULE==============


#  module Circle

#   PI = 3.141592653589793
  
#   def Circle.area(radius)
#     PI * radius**2
#   end
  
#   def Circle.circumference(radius)
#     2 * PI * radius
#   end
# end


#=========INCLUDE/REQUIRE==============


# class Angle
#   include Math
#   attr_accessor :radians
  
#   def initialize(radians)
#     @radians = radians
#   end
  
#   def cosine
#     cos(@radians)
#   end
# end

# acute = Angle.new(1)
# puts acute.cosine


#=========USING MODULES WITH INCLUDE==============


# module Action
#   def jump
#     @distance = rand(4) + 2
#     puts "I jumped forward #{@distance} feet!"
#   end
# end

# class Rabbit
#   include Action
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# class Cricket
#   include Action
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# peter = Rabbit.new("Peter")
# jiminy = Cricket.new("Jiminy")

# peter.jump
# jiminy.jump

#=========USING MODULES WITH EXTEND==============


# # ThePresent has a .now method that we'll extend to TheHereAnd

# module ThePresent
#   def now
#     puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
#   end
# end

# class TheHereAnd
#   extend ThePresent
# end

# TheHereAnd.now



#=========USING MODULES WITH EXTEND==============



# module Languages
#   FAVE = "Ruby"  
# end

# class Master
#   include Languages
#   def initialize; end
#   def victory
#     puts FAVE
#   end
# end

# total = Master.new
# total.victory

