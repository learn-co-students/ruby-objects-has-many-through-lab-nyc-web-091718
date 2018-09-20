class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self #if !@@all.any? {|genre| genre.name == name}
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def self.all
    @@all
  end

  def artists
    songs_by_artists = Song.all.select {|song| song.genre == self}
    songs_by_artists.map {|song| song.artist}.uniq
  end

end
