class Machine
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"




#========MY OWN PROJ==========

# class Computer
#   @@users = {}
#   def initialize(username, password)
#     @username = username
#     @password = password
#     @files = {}
#     @@users[username] = password
#   end
  
#   def create(filename)
#     time = Time.now
#     @files[filename]=time
#     puts "#{filename} was created by #{@username} at #{time}."
#   end
  
#   def Computer.get_users
#     return @@users
#   end
# end

# my_computer = Computer.new("Kat", 1234)
# my_computer.create("groceries.txt")



# class Language
#   def initialize(name, creator)
#     @name = name
#     @creator = creator
#   end
	
#   def description
#     puts "I'm #{@name} and I was created by #{@creator}!"
#   end
# end

# ruby = Language.new("Ruby", "Yukihiro Matsumoto")
# python = Language.new("Python", "Guido van Rossum")
# javascript = Language.new("JavaScript", "Brendan Eich")

# ruby.description
# python.description
# javascript.description



# #======INSTANCE VARIABLE=======


# class Car
#   def initialize(make, model) 
#     @make = make
#     @model = model
#   end
# end

# kitt = Car.new("Pontiac", "Trans Am")


# #======DIFFERENT VARIABLE EXAMPLES=======


# class Computer
#   $manufacturer = "Mango Computer, Inc."
#   @@files = {hello: "Hello, world!"}
  
#   def initialize(username, password)
#     @username = username
#     @password = password
#   end
  
#   def current_user
#     @username
#   end
  
#   def self.display_files
#     @@files
#   end
# end

# # Make a new Computer instance:
# hal = Computer.new("Dave", 12345)

# puts "Current user: #{hal.current_user}"
# # @username belongs to the hal instance.

# puts "Manufacturer: #{$manufacturer}"
# # $manufacturer is global! We can get it directly.

# puts "Files: #{Computer.display_files}"
# # @@files belongs to the Computer class.



#======CLASS VARIABLE======

# class Person
#   # Set your class variable to 0 on line 3
#   @@people_count = 0
  
#   def initialize(name)
#     @name = name
#     # Increment your class variable on line 8
#     @@people_count += 1
#   end
  
#   def self.number_of_instances
#     # Return your class variable on line 13
#     return @@people_count
#   end
# end

# matz = Person.new("Yukihiro")
# dhh = Person.new("David")

# puts "Number of Person instances: #{Person.number_of_instances}"


#======REAL LIFE CLASS EXAMPLE======


# def create_record(attributes, raise_error = false)
#   record = build_record(attributes)
#   yield(record) if block_given?
#   saved = record.save
#   set_new_record(record)
#   raise RecordInvalid.new(record) if !saved && raise_error
#   record
# end



#======INHERITANCE======


# class ApplicationError
#   def display_error
#     puts "Error! Error!"
#   end
# end

# class SuperBadError < ApplicationError
# end

# err = SuperBadError.new
# err.display_error



#======INHERITANCE AND SUPER======


# class Message
#   @@messages_sent = 0
#   def initialize(from, to)
#     @from = from
#     @to = to
#     @@messages_sent += 1
#   end
# end

# class Email < Message
#   def initialize(from, to)
#     super
#   end
# end

# my_message = Message.new("Kat","Kyle")
