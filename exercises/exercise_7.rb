require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative '../lib/store'
require_relative '../lib/employee'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Ask user for a store name
print "Enter a store name: "
store_name = gets.chomp

# Attempt to create a store with the inputted name
new_store = Store.new(name: store_name)

# Output error messages if the store is not valid
if !new_store.valid?
  puts "Error messages:"
  new_store.errors.full_messages.each do |error|
    puts error
  end
end