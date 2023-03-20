# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# PLANS FOR SCISSORS FITNESS

plans = Plan.create([
  {name: "Monthly", price: 1200, description: "Monthly plan valid for 30 days"},
  {name: "3 Months", price: 3000, description: "Three months plan valid for 90 days and 200 rupees less than monthly plan"},
  {name: "6 months", price: 4800, description: "Six plan valid for 180 days and 1200 rupees less than three months plan."}
  ])

puts "Plans are created successfully !"
