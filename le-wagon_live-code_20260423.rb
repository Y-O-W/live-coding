# OOP - Class & Inheritance
# 
# Class - Wizard, Warrior, Character
# 
# Getters & Setters
#   attr_reader
#   attr_writer
#   attr_accessor
#   
# Method - Constructor
# 
# def initialize (parameters)
#   @instance_variable
# end
# 
# Method - Instance
# 
#   methods that call on an instance of the class
#   
# Method - Class
#   methods that call on the class itself
#   Keyword - Self
#   library mehtods like JSON.parse or Time.now --> often built in
#   class methods return an object, often an instance --> either of its own class or a different class (e.g. Hash)
#   
#   def self.method_class
#     
#   end
#   
# Keyword - Self - Instance Method
#   use to call on an instance itself self.instance_method or self.instance_variable
#    
#   
#  
# Class - Inheritance
# 
# Parent or Super Class with basic methods Child or Sub Classes inherit from --> often used for dependencies (library, gem)
# 
#   Require - Relative - Parent Class
#   
#   class ChildClass < ParentClass
#   end
#   
#   Super - Keyword --> modify method from Super Class, calls the parent method with the same name
#     
#     def name_super_class
#       super 'some other code'
#     end
#     
#   Initialize an Instance of a sub classs with an additional instance variable
#   
#     def initialize (parameters)
#       super(parent class parameters)
#       @child_class_variable = child_class_parameter
#
# Interface
#   Require - Relative - Class in file
# 
#   Class - Instance
# 
#     variable = Class.new(arguments)
# 
# Live Code - Test Driven Development
#   Rspec --> rake
#   use when refactoring code
