# Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class

# 
#   #initialize with a name
#     accepts a name for the song and makes it accessible through an attribute accessor (FAILED - 11)
#   #name=
#     sets the song name (FAILED - 12)
#   #artist=
#     sets the artist object to belong to the song (FAILED - 13)
#   .all
#     returns all existing Song instances (FAILED - 14)
#   .new_by_filename
#     creates a new instance of a song from the file that's passed (FAILED - 15)
#     associates new song instance with the artist from the filename (FAILED - 16)
#   #artist_name=
#     accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute (FAILED - 17)


class Song

    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        # @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        split_path = filename.split(" - ")
        song = split_path[1]
        artist = split_path[0]
        release = self.new(song)
        release.artist_name = artist
        release
        # artist = split_path[0]
        # song.artist_name=(split_path[0])
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
end