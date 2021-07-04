class Song
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = Artist.all.find {|x| x == artist}
    @genre = Genre.all.find {|x| x == genre}
    @@all << self
    genre.songs << self
    genre.artists << artist
  end

end
