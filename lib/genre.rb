class Genre
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

end
