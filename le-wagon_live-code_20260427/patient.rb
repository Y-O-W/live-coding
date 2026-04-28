class Patient
  # read outside the class
  attr_reader :name, :room
  attr_writer :room
end
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @blood = attributes[:blood]
  end

  def cure!
    @cured = true
  end

end

john = Patient.new(name: "john", cured: false)
sarah = Patient.new(name: "sarah", cured: true, blood: "A")
# empty hash
patient = Patient.new({})

p john
p sarah
p patient

# p.john.cure
# p.john.cured --> true
