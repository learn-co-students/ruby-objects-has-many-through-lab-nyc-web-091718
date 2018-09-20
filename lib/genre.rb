class Genre
  attr_reader :name
  @@genres = []

  def initialize(name)
    @name = name
    @@genres << self
    @songs = []
    @artists = []
  end

  def songs
    @songs
  end

  def self.all
    @@genres
  end

  def artists
    @artists
  end
end
