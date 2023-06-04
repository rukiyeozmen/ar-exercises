require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Total revenue for the entire company
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue: #{total_revenue}"

# Average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue: #{average_revenue}"

# Number of stores generating $1M or more in annual sales
stores_with_high_revenue = Store.where("annual_revenue >= 1000000").count
puts "Number of Stores with $1M or More in Annual Sales: #{stores_with_high_revenue}"
