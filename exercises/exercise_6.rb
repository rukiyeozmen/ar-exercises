require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Add the association between Store and Employee models
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

# Create employees for store1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 55)

# Create employees for store2 (Richmond)
@store2.employees.create(first_name: "Alex", last_name: "Johnson", hourly_rate: 65)

# Helper method to print employees
def print_employees(store)
  store.employees.each do |employee|
    puts "Name: #{employee.first_name} #{employee.last_name}, Hourly Rate: #{employee.hourly_rate}"
  end
end

puts "Employees of Store 1 (Burnaby):"
print_employees(@store1)

puts "Employees of Store 2 (Richmond):"
print_employees(@store2)