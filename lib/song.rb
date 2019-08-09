class Song
  @@all = []
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(artist_name)
    # assign song.artist an Artist instance, or create one if not yet existant
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist = artist
  end

  def self.new_by_filename(filename)
    # remove file extension, split metadata into component parts, and assign to variables
    metadata = filename.gsub(".mp3", "").split(" - ")
    artist = metadata[0]
    name = metadata[1]
    genre = metadata[2]
    # create new Song instance with song name
    song = self.new(name)
    song.genre = genre
    # call artist_name= to assign Artist instance to #artist value
    song.artist_name = artist
    # return Song instance
    song
  end
end
