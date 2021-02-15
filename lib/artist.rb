require 'pry'

class Artist

    @@song_count = 0
    attr_accessor :name, :songs

    def initialize(name)
       @name = name
       @songs = []
    end

    def self.song_count
        Song.all.count
    end

    def songs
        list = []
        Song.all.each do |song|
            if song.artist == self
            list << song
            end
           
        end
        
        return list
    end


    def add_song(song_name)
        song_name.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
      
    end
end
