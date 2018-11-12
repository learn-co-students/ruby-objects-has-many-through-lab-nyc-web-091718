class Genre
    attr_reader :name

  @@all = []

    def initialize(name)
      @name = name
      @@all<< self
    end

    def self.all
      @@all
    end

    # 1. Write out the method definition
    # 2. Ask yourself, what do you want to get back?
    # 3. Where can I find this data?
    # 4. What do I need to do with this data?
    # 5. Figure out what conditional you need? Or what to change?
    # 6. I need to compare the certain criteria to what am I(self)

    def songs
      Song.all.select do |certain_song|
        certain_song.genre  == self # [song1, song2, song3, song4]
      end
      #compare to self, who belongs to me
      # return songs of a certain genre
      # [song1, song2]
    end

    def artists
      #SELF is whatever is left of the dot
      #self in side the instance method will always be(call on)  instance of a class
      self.songs.map do |one_song|
        one_song.artist
      end
    end
    #Genre.all[0]artists to test it
    # rihanna = Artist.new('Rihanna')
    # pop = Genre.new('pop')
    # umbrella = Song.new('Umbrella', rihanna, pop)
    # britney = Artist.new('Britney Spears')
    # toxic = Song.new('Toxic', britney, pop)
    #
    # pop.songs ==> [
    #                 {name: 'Umbrella', artist: { name: 'Rihanna' }, genre: { name: 'Pop' } },
    #                 {name: 'Toxic', artist: { name: 'Britney Spears' }, genre: { name: 'Pop' } }
    #               ]
    # pop.artists ==> [ {name: 'Rihanna' },  {name: 'Britney Spears' } ]




    #     def artists
    #       Song.all.each do |each_s|
    #         my_artist_list = []
    #         #each_s.genre == self
    #         if each_s.genre == self
    #           my_artist_list << each_s.artist
    #           end
    #         end
    #
    #     end
    # Will return artist array
    # specific criteria - certain Genre
    # To find this data I will go thru the Song class
    # Will pull all songs using each method
    # because it returns the each value of the array
    # Will set the condition to see is each song belongs to a spefic genre
    # will create a variable and set it to an empty array
    # will add each_artist that matches the artist into an empty array
    # my_artist_list = []
    # my_artist_list << each_artist.song
end #end of a class
