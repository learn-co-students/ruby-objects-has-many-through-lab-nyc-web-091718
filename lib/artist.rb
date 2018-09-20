require 'pry'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title,genre)
   Song.new(title,self,genre)

  end

  def genres
    genre = songs.each.map{|song| song.genre}
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

end
