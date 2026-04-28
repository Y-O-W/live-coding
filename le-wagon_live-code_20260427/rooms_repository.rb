require "CSV"
require_relative "room"
class RoomsRepository
  def initialize(csv)
    @csv = csv
    @rooms = []
    load_csv
  end

  def find(id)
    @rooms.find{ |room| room.id == id}
  end
end

private 

repo = RoomsRepository.new("./rooms.csv")
p repo
