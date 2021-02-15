require 'pry'

class Song

    @@all = []
    attr_accessor :artist, :name

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def artist 
        @artist
    end


    def artist_name
        if !@artist
        else
        self.artist.name
        end
        # binding.pry
        # list = []
        # Song.all.each do |song|
        #     song.artist == artist.name
        #     list << song
        # end
    end

    def self.all
        @@all
    end


end