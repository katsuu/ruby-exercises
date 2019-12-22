books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.reverse! { |firstBook, secondBook| firstBook <=> secondBook }

print books

my_array = [1, 2, 3, 4, 5]
multiply_all = 1

my_array.each do |num|
  multiply_all *= num
end

puts multiply_all