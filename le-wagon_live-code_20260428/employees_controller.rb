require_relative "employee_view"

class EmployeesController
  def intitialize(repository)
    @repository - repository
    @view = EmployeeView.new
  end

  def login
    username = @view.ask("username")
    password = @view.ask("password")

    employee = @repository.find(username)

    if employee
      if employee.password == password
        @view.login_successful
      else
        @view.login_incorrect
        login
      end
    else
      @view.login_incorrect
      login
    end
    # ask for username
    # ask for password
    #   find the employee based on username
    #   if the employee exists (username is correct)
    #   check if password is correct
    #   if employee doesn't exist
    #   try again
    # if password is correct
    #   access
    #   if the password is not correct
    #   try again
  end
end