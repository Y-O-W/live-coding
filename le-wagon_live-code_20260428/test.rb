# Require
require_relative "employee"
require_relative "employees_repository"
require_relative "employees_controller"

repo = EmployeesRepository.new("employees.csv")
controller = EmployeesController.new(repo)

p repo

controller.login