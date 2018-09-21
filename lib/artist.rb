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

  def new_song(name, genre)

    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song_info|
      if song_info.artist == self
        song_info.name
      end
    end
  end

  def genres
    songs.map do |song_info|
      song_info.genre
    end
  end

end
