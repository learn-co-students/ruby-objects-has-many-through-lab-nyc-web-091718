class Artist
  attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def songs
  Songs.all.select do |certain_artist|
    certain_artist.artist == self
  end
end
  # 2.we need to return the array of songs, specific criteria that it belongs to an artist
  # 3. Going to look for the ALL songs in the Song class
  # 4./5. I need to iterate over the array of all songs using the select method
  # 6. I want to compare the result(certain criteria) to the self(the class that I am in for this method)

# def genres
#   Song.all.each do |each_song|
#     my_genre_list = []
#     # each_song.artist == self
#   if each_song.artist == self
#     #Song.genre
#     my_genre_list << each_song.genre
#   end
#   my_genre_list# we need to put it out of the loop, because rub y will return the last method
# end
# end
#2. Return an array ***genre***
#(criteria - songs belong to a certain Artist)
#3. To find this data I will go thru th Song class
#to pull all songs using each methos because it returns each value of the array
#Will zset the if condition to see if each song belongs to a specific artist or not
#will create a variable = []
#will add an each_song that matche the genre into an empty variable array
# my_genre_list = []
# my_genre_list << each_song.genre

end  #end of class

# 1. Write out the method definition
# 2. Ask yourself, what do you want to get back?
# 3. Where can I find this data?
# 4. What do I need to do with this data?
# 5. Figure out what conditional you need? Or what to change?
# 6. I need to compare the certain criteria to what am I(self)
