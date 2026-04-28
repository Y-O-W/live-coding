require "CSV"
require_relative "patient"
require_relative "room"
class PatientsRepository
  attr_reader :patients
  def initialize(csv, room_repo)
    @csv = csv
    @patients = []
    @room_repo = room_repo
    @next_id = 1
    load_csv
  end

  def create(patient)
    # set if for new patient
    patient.id = @next_id
    @next_id += 1
    @patients << patient
    # save to csv
  end

  private

  def load_csv
    CSV.foreach("./patients.csv", headers: ) do |row|
      row[:id] = row[:id].to_i
      row[:room_id] = row[:room_id].to_i
      room = room_repo.find(row[:room_id])
      row[:cured] = row[:cured] == "true"

      p row
      # become patients
      patient = Patient.new(row)
      patient.room = room
      @patients << patient
      p patient
    end
  end
end

room_repo = RoomRepo.new()

repo = PatientsRepository.new("./patients.csv", room_repo)
p repo.patients