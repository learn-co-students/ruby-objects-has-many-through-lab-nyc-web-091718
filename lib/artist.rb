require 'pry'

class Artist

  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end

  def self.all
    @@all
  end

#"Ninety Nine Problems" , @genre="rap"
  def new_song(name, genre)
    aSong = Song.new(name, self, genre)
    @songs << aSong
    aSong
  end


  def songs
    @songs
  end

  def genres

    @songs.each do |song|
    @genres << song.genre

      end
    @genres
  end


end
