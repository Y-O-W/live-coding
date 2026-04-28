require_relative "patient"
require "CSV"

CSV.foreach("./patients.csv", headers: ) do |row|
  row[:id] = row[:id].to_i
  row[:cured] = row[:cured] == "true"
  p row
  # become patients
  patient = Patient.new(row)
  p patient
end


