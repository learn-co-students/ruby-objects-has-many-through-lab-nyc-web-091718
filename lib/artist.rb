require 'pry'

class Artist
  attr_accessor :name, :genre
  @@all = []

  def self.all
    @@all
  end # end self.all method

  def initialize(name)
    @name = name
    self.class.all << self
  end # end initialize method

  def new_song(name, genre)
    Song.new(name, self, genre)
  end # end new_song method

  def songs
    Song.all.select {|song| song.artist == self}
  end # end songs method

  def genres
    self.songs.map {|song| song.genre}
  end # end genres method

end # end Artist class
