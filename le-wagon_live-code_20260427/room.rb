require_relative "patient"

class Room
  attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  class FullRoomError < StandardError; end

  def add(patient)
    # if room is full
    if full?
      p "Error"
      raise FullRoomError, "the room is full"
    else
      patient.room = self
      @patients << patient
    end
  end

  def full?
    @capacity == @patients.size
  end
end

room = Room.new(capacity: 2)
p room

john = Patient.new(name: "john", cured: false)
sarah = Patient.new(name: "sarah", cured: false)
mike = Patient.new(name: "mike", cured: false)

# put our patient in the room
# room.add Method
# if capacity == number of patients the room is full
# room.full?