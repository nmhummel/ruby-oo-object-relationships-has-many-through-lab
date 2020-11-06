# has many songs
# has many genres thru its songs

class Artist

    attr_accessor :name #, artist, :genre

    @@all = [] # class variable @@all starts as empty array
    
    # An artist is initialized with a name and is saved in the @@all array.
    def initialize(name)
        @name = name
        @@all << self
    end


    # knows about all artist instances
    def self.all
        @@all  
    end


    # returns all songs associated with this Artist
    def songs
        Song.all.select {|song| song.artist == self}
        # iterates thru all songs (args = song name, artist, genre) and finds songs that belong to that artist (current instance). 
        # artist comes in through Song class
    end 
    
    # # given a song name and genre, creates a new song associated with that artist 
    def new_song(name, genre) # instance method (on artist instance)
        Song.new(name, self, genre)
    end
    # song should know that it belongs to the artist


    # has many genres, through songs 
    def genres
        songs.collect do |song|
            song.genre
        end
        #iterates over that artist's songs and collects the genre of each song.
    end

    # def artists
    #     songs.collect do |song|
    #         song.artist
    #     end
    #     #  iterates over the genre's collection of songs and collects the artist that owns each song
    # end

    # madonna = Artist.new("Madonna") 


end