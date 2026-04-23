# Object Oriented Programming
# Class & Instance & Object
# Class --> naming convention starts capitalized (e.g. SportsCar, UpperCamelCase), file name is lower_snake_case (e.g. sports_car.rb)
# set default for every new instance --> set of conditions and values
class Drink
  # Public Interface
  # Reader & Writer comes first
  attr_reader :spirit, :brand
  attr_writer :spirit
  # Can read and write
  attr_accessor :spirit
  # First Method of every class, Default Variables
  def initialize(spirit)
    # instance variable --> starts with @ and only used within the class
    # every new instance created automatically has this value
    @drink_started = false
    @spirit = spirit
    @brand = "Bacardi"
  end
  # Method Name should be the same as instance variable name
  # explicit reader (=getter) - use attr_reader as shortcut
  def spirit?
    return @spirit
  end
  # explicit writer (setter)
  # Method - Spirit - Update with =
  def spirit=(new_spirit)
    @spirit = new_spirit
  end

  # Method - Boolean with ?
  # implicit reader
  def drink_started?
    return @drink_started
  end
  # calls a private method
  def make_drink
    puts start_drink
  end
  # Private Interface
  # private keyword - to hide something backstage --> private interface
  # cannot be accessed outside
  # but can be triggered by other methods in the class
  private

  # Method - Change Instance Variable
  # to change the value of an instance variable can only be done within the class
  # Methods that are not exposed to the user
  def start_drink
    @drink_started = true
  end
end

