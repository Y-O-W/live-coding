# access date library
require 'date'
# # start defining days_until_xmas method
# def days_until_xmas
#   # get todays date
#   today = Date.today
#   # get next christmas date
#   xmas_date = Date.new(2026, 12, 24)
#   # calculate days between
#   days = xmas_date - today
#   # return days
#   days.to_i
# end

# puts days_until_xmas

def days_until_xmas(target_date)
  # get next christmas date
  current_year = target_date.year
  xmas_date = Date.new(current_year, 12, 24)
  # if xmas is before the current date
  if xmas_date < target_date
    xmas_date = xmas_date.next_year
  end
  # calculate days between
  days = xmas_date - target_date
  # return days
  days.to_i
end

target = Date.new(2026, 7, 4)
puts days_until_xmas(target)

new_target = Date.new(2026, 12, 30)
puts days_until_xmas(new_target)
