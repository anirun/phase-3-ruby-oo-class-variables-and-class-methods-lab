require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = @@genres.group_by(&:itself).map { |genre,number| [genre, number.count] }.to_h
    end

    def self.artist_count
        artist_count = @@artists.group_by(&:itself).map { |genre,number| [genre, number.count] }.to_h
    end

end