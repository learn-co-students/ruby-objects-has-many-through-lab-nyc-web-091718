require_relative './patient.rb'
require_relative './appointment.rb'
require_relative './doctor.rb'

require 'pry'

d1 = Doctor.new("Ben")
d2 = Doctor.new("Pinstripes")

p1 = Patient.new("Jane")
p2 = Patient.new("Sutton")

p1.new_appointment("Sept 21", "Ben")

binding.pry
