# Object Oriented Programming
# Class & Instance & Object
# Class --> naming convention starts capitalized (e.g. Car), file name is the same (e.g. car.rb)
class Drink
  
end

# Debugging
# require
require "pry-byebug"
# pry byebug has different keywords
def full_name_capitalized(first_name, last_name)
  first_name.capitalize
  last_name.capitalize
  # use keyword where you want to test
  # binding.pry
  puts "#{first_name} #{last_name}"
end

full_name_capitalized("yves", "wilken")

# Class - Built In
String
Integer
Array
Hash
Symbol
# Class - Real World
# Shopping --> user, order, product
# Car Sharing --> driver, car, trip
# 
class User
  # Getters & Setters
  attr_reader :name
  # Definition - Method - Initialize
  def initialize(name, email)
    @name = name
    @email = email
    @newsletter_subscription = false
  end
end

def newsletter_subscribed?
  return @newsletter_subscription
end

def newsletter_subscribed
  @newsletter_subscription = true
end
def greet
  puts "Hi, #{@name}"
end