class Genre

  attr_reader :genre, :name, :songs

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @artists = []
  end

  def self.all
    @@all
  end

  def artists
    @artists
  end

# iterates through all songs and finds the songs that belong to that genre.

end
