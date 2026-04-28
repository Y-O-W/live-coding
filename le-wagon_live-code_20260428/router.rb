# Require
# Definiton - Class
class Router
  # Interface - Public
  # Definition - Method - Constructor
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
    @current_user = nil
  end
  # Definition - Method - Instance
  # Definition - Method - Start Router
  def run
    puts "Welcome to the Food Delivery!"
    puts "           --           "

    while @running
      @current_user = @employees_controller(login)
      while @current_user
        case @current_user.role
        when "manager" then
          display_tasks_manager
          action = gets.chomp.to_i
          print `clear`
          route_action_manager(action)
        when "driver" then
          display_tasks_driver
          action = gets.chomp.to_i
          print `clear`
          route_action_driver(action)
        else
          puts "Role doesn't exist"
          logout
        end
      end
    end
  # Interface - Private
  
  private

  # User Action
  # As a user, I can add a new meal
  # As a user, I can list all the meals
  # As a user, I can add a new customer
  # As a user, I can list all the customers
  # As a user, I can edit an existing meal
  # As a user, I can destroy an existing meal
  # As a user, I can edit an existing customer
  # As a user, I can destroy an existing customer
  def route_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @meals_controller.update
    when 4 then @meals_controller.destroy
    when 5 then @customers_controller.list
    when 6 then @customers_controller.add
    when 7 then @customers_controller.update
    when 8 then @customers_controller.destroy
    when 9 then @employees_controller_controller.login
    when 10 then stop
    else
      puts "Please press 1, 2, 3 4, 5, 6, 7, 8 or 9"
    end
  end
  # Definition - Method - Stop Router
  def stop
    # @current_user = nil
    logout
    @running = false
  end

  def logout
    @current_user = nil
  end
  # Definiton - Method - Output
  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - Update a meal (number, id, index)"
    puts "4 - Delete a meal (number, id, index)"
    puts "5 - List all customers"
    puts "6 - Add a new customer"
    puts "7 - Update a customer (number, id, index)"
    puts "8 - Delete a customer (number, id, index)"
    puts "9 - Logout"
    puts "10 - Stop and exit the program"
  end
end
