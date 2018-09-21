require 'pry'

class Genre
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end # end self.all method

  def initialize(name)
    @name = name
    self.class.all << self
  end # end initialize method

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end # end songs method

  def artists
    self.songs.map {|song| song.artist}
  end # end artists

end # end Genre class
