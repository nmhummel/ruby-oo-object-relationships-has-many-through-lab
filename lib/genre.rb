# has many songs
# has many artists thru its songs

class Genre

    attr_accessor :name, :artist # song name and singer

    @@all = [] #class var starts as empty array

    def initialize(name) #song name
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end


    def songs
        Song.all.select {|song| song.genre == self}
        #  iterates through all songs and finds the songs that belong to that genre
    end


    def artists
        songs.collect do |song|
            song.artist
        end
        #  iterates over the genre's collection of songs and collects the artist that owns each song
    end


end

# pop = Genre.new("pop") 