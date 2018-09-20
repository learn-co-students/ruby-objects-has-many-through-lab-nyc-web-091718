require 'pry'

class Genre

  attr_reader :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    #instance method, `#artists`, that iterates over the
   #genre's collection of songs and collects the artist that owns each
    self.songs.map do |song|
      song.artist
    end
  end



end #end of class

#binding.pry
