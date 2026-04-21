# Parsing
# Parsing - CSV
# require library
require "csv"
# define file path
filepath = "beatles.csv"
# Parsing CSV - Path, Mode, Options
CSV.foreach(filepath) do |row|
  p row.class
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
end
# Options - Headers
CSV.foreach(filepath, headers: :frist_row) do |row|
  p row.class # csv::row
  puts "#{row["First Name"]} | #{row["Last Name"]} | #{row["Instrument"]}"
end
# Storing
# Storing - CSV
# Storing - Mode - Writing Binary
CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John", "Lennon", "Guitar"]
end

# Parsing - JSON
# require library
require "json"
# define file path
filepath = "beatles.json"
# read - string
p file.read(filepath).class

seralized_beatles = file.read(filepath)

beatles = JSON.parse(seralized_beatles)
# parse - it's a hash with an array of hashes inside
p beatles
p beatles["beatles"][0]["first_name"]

# Storing - JSON
# open and generate JSON
File.open(filepath, "wb") do |file|
  p JSON.generate(beatles).class
  file.write(JSON.generate(beatles))
end

# Web Data
# require JSON and Open URI

require "json"
require "open-uri"

url = "url"

user_serialized = URI.parse(url).read
# converts into string
p user_serialized.class
# turn it into a Ruby object
user = JSON.parse(user_serialized)
# converts into a hash
p user.class

p "#{user["name"]} - #{user["bio"]}"

# Scraping - Get Data without an API
# 
# require library
require "open-uri"
require "nokogiri"

url = "url"
# parse as a string
html_file = URI.parse(url).read
p html_file.class
# converts it into Nokogiri HTML
html_doc = Nokogiri::HTML.parse(html_file)
p html_doc.class
# search with CSS selector
html_doc.search(".country").each do |element|
  puts element.text.strip
end

