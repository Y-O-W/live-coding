# Routes http requests --> URLs
# www.tasklist.com/list/
# direct user choice to the controller
class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  # Routes - controller actions
  def print_actions
    puts "\n---"

  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.mark_as_done
    when 4 then @controller
    else
      puts "That's not possible."
    end
  end
end