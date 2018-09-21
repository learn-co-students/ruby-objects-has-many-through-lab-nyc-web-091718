require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, genre)
    new = Song.new(song_name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end

  end

end


# a1 = Artist.new("shel")
# a2 = Artist.new("bob")
# binding.pry
