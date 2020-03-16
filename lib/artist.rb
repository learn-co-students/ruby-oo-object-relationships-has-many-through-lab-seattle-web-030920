require 'pry'
require_relative 'song.rb'
require_relative 'genre.rb'

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

    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    # binding.pry
    def songs
        Song.all.select{|song| song.artist == self}
    # binding.pry e
    end
    
    def genres
        self.songs.map{|song| song.genre}
    end

end