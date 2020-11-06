# BELONGS TO ARTIST AND GENRE
class Song

    attr_accessor :name, :artist, :genre

    @@all = [] # class variable @@all starts as empty array

    
    # A song should be initialized with a song name, an artist, and a genre, and be saved in the @@all array.
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end


    # class method that lists each song in the class variable.
    def self.all
        @@all
    end

end

# madonna = Artist.new("Madonna")
# pop = Genre.new("pop")

# into_the_groove = Song.new("Into the Groove", madonna, pop) 