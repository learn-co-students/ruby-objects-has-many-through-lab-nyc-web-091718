require 'pry'
require_relative './lib/artist'
require_relative './lib/song'
require_relative './lib/genre'

require_relative './lib/patient'
require_relative './lib/doctor'
require_relative './lib/appointment'

#10.times do |number|
#Artist.new("Bob" #{number})

#10.times do |number|
#Genre.new("Bob" #{number})

#Song.new("s1", Artist.all[0], Genre.all[0])

g1 = Genre.new("pop")
g2 = Genre.new("classic")
g3 = Genre.new("heavy metal")
g4 = Genre.new("rock")

a1 = Artist.new("Bob")
a2 = Artist.new("Dan")
a3 = Artist.new("Lily")
a4 = Artist.new("Lucy")

s1 = Song.new("q", a1, g1)
s2 = Song.new("q", a3, g4)
s3 = Song.new("q", a3, g4)
s4 = Song.new("q", a3, g4)


p1 = Patient.new("Matt")
p2 = Patient.new("Tom")
p3 = Patient.new("Rachel")
p4 = Patient.new("Harper")

d1 = Doctor.new("dentist")
d2 = Doctor.new("podiatrist")
d3 = Doctor.new("ophthalmologist")
d4 = Doctor.new("physician")

a1 = Appointment.new("Monday, August 1st", p1, d4)
a2 = Appointment.new("Wednesday, March 8th", p4, d2)
a3 = Appointment.new("Thursday, June 3rd", p3, d4)
a4 = Appointment.new("Friday, August 21st", p4, d3)

binding.pry

0
