class Genre

    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        genre_artists = []
        songs.select {|song| genre_artists << song.artist}
        genre_artists
    end
end