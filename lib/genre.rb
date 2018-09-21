require 'pry'

class Genre

  attr_accessor :name

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
      if song.genre == self
        song
      end
    end
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end

# g1 = Genre.new
# binding.pry
