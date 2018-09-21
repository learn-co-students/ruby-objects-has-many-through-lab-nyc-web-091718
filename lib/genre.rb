class Genre

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song_info|
      if song_info.genre == self
        song_info.name
      end
    end
  end

  def artists
    songs.map do |song_info|
      song_info.artist
    end
  end

end
