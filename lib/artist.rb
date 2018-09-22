class Artist

attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def new_song(songname, genre)
    Song.new(songname, self, genre)
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def genres
    artistsongs = Song.all.select{|song| song.artist == self}
    artistsongs.map {|song| song.genre}
  end



end
