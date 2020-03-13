class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(new_name, new_genre)
        Song.new(new_name, self, new_genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        self.songs.map {|song| song.genre}
    end
end