# Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).
require 'pry'

class Artist

    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = songs
    end
    def print_songs
        songs.each {|song| puts song.name}
    end
     def self.all
        @@all
    end
    def songs
        Song.all.select {|tune| tune.artist == self}
    end
    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
#find the artist instance that has that name
        exists = self.all.find {|artists| artists.name == name}
#if the artist doesn't exist, create it
        if exists
            exists
        else
            self.new(name)
        end
#return an instance of an artist with name attribute filled out
    end



#   .all
#     returns all existing Artist instances (FAILED - 3)
  
#     lists all songs that belong to this artist (FAILED - 4)
#   #add_song
#     keeps track of an artist's songs (FAILED - 5)
#   .find_or_create_by_name
#     always returns an Artist instance (FAILED - 6)
#     finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 7)
#     Creates new instance of Artist if none exist (FAILED - 8)
#   #print_songs
#     lists all of the artist's songs (FAILED - 9)
end


  