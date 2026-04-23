# Definiton - Require
require_relative "drink.rb"
require_relative "le-wagon_live-code_20260422.rb"
# Definition - Instance
# Constructor --> Drink.new # => Instantiates the class, then calls the method `initialize`.
# .new is a class method and trigger the initialize method of the class
# .new can be initialized with an empty argument
first_drink = Drink.new("")
bourbon_drink = Drink.new("Bourbon")

first_drink.spirit("Rum")
# Output - Instance
p first_drink
p bourbon_drink

# Create - Instance
yves = User.new("yves", "yves@yowfactor.com")
# Output - Instance
p yves