require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Doctor", last_name: "Zoidberg", hourly_rate: 0)
@store1.employees.create(first_name: "Steven", last_name: "Fry", hourly_rate: 15)
@store1.employees.create(first_name: "Bender", last_name: "", hourly_rate: 20)

@store2.employees.create(first_name: "Homer", last_name: "Simpson", hourly_rate: 55)
@store2.employees.create(first_name: "Lisa", last_name: "Simpson", hourly_rate: 12)
@store2.employees.create(first_name: "Marge", last_name: "Simpson", hourly_rate: 25)
@store2.employees.create(first_name: "Bart", last_name: "Simpson", hourly_rate: 16)

