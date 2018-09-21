require 'pry'
# Our join table class.
# We have a Song, Artist, and Genre class.
# Songs belong to an artist and belong to a genre.
# A genre has many songs and an artist has many songs.
# An artist has many genres through its songs and a genre has many artists
# through its songs.

class Artist
  attr_accessor :name

  @@all = []

  # Lists each artist in the class variable
  def self.all
    @@all
  end # end of .all method

  def initialize(name)
    @name = name
    self.class.all << self
  end # end of #intiailize method

  # Takes in an argument of a name and genre creates a new song.
  def new_song(name, genre)
    Song.new(name, self, genre)
  end # end of #new_song method

  # Iterates through all songs and finds the songs
  # that belong to that artist.
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end # end of #songs method

  # Iterates over that artist's songs and collects
  # the genre of each song.
  def genres
    songs.map do |song|
      song.genre
    end
  end # end of #genres method

end # end of Artist class
