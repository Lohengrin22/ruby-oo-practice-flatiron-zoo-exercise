require_relative "LG_version_Animal.rb"
require_relative "LG_version_Zoo.rb"
require_relative "LG_version_City.rb"
require 'pry'
#If you can read this, you have the updated Readme File# - Jonathan

#Test your code here
#Test data
#Cities
dallas = City.new("Dallas", "USA")
paris = City.new("Paris", "France")
nyc = City.new("NYC", "USA")
london = City.new("London", "England")

#Zoos
dallas_zoo = Zoo.new("Dallas Zoo", "Mckinney, Texas")
fancy_zoo = Zoo.new("Fancy Zoo", "Omaha, Nebraska")
best_zoo = Zoo.new("Only Cats", "Meow, Oklahoma")
little_zoo = Zoo.new("Little Zoo", "Meow, Oklahoma")

#Animals
tiger = Animal.new("Tiger", "Africa", best_zoo, london)
koala = Animal.new("Koala", "Australia", little_zoo, nyc)
buffalo = Animal.new("Buffalo", "North America", little_zoo, paris)
panda = Animal.new("Panda", "Asia", fancy_zoo, paris)
lion = Animal.new("Lion", "Africa", best_zoo, nyc)

City.most_animals



binding.pry
puts "done"

#test this: ruby LG_version_run.rb
    # best_tipped_meal = meals.max{|meal_a, meal_b| 
    # meal_a.tip <=> meal_b.tip}
    # best_tipped_meal.customer
