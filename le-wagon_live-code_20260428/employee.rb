class Employee
  
  attr_reader :id, :password, :username

  def intitialize(attributes = {})
    @id = attributes[:id]
    @unsername = attributes[:unsername]
    @role = attributes[:role]
    @password = attributes[:password]
  end

  def manager?
    @role == "manager"
  end

  def driver?
    @role == "driver"
  end

end