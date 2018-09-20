require 'pry'

class Artist

  attr_reader :name, :songs, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @genre = genre
    @@all << self
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    @songs << new_song
    new_song
  end

  def genres
    #iterate over the artist songs
    #collect genre of each song
    self.songs.map do |song|
      song.genre
      #binding.pry
    end
  end





end

#binding.pry
