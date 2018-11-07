require 'pry'
require_relative './lib/artist'
require_relative './lib/song'
require_relative './lib/genre'

g1 = Genre.new("pop")
g2 = Genre.new("classic")
g3 = Genre.new("heavy metal")
g4 = Genre.new("rock")

a1 = Artist.new("Bob")
a2 = Artist.new("Dan")
a3 = Artist.new("Lily")
a4 = Artist.new("Lucy")

s1 = Song.new("q", a1, g1)
s2 = Song.new("q", "Bob", "pop")



binding.pry

0
