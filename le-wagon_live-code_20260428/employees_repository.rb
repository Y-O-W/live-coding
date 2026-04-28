require "csv"
require_relative "employee"
class EmployeesRepository
  def intitialize(employee_csv)
    @employee_csv = employee_csv
    @employees = []
    @next_id = 1
    load_csv if File.exist?(employee_csv)
  end

  def find(username)
    @employees.find do |employee|
      employee.username == username
    end
  end

  private

  def load_csv
    CSV.foreach(@csv, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      employee = Employee.new(row)
      @employees << employee
      @next_id = employee.id + 1
    end
  end
end
