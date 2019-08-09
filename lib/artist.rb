class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    # look for an Artist instance where #name matches argument
    artist_exists = self.all.find do |artist|
      artist.name == name
    end
    # if #name matches argument, return that instance
    # otherwise, create a new Artist with that name
    artist_exists ? artist_exists : new_artist = Artist.new(name)
  end

  def songs
    # return collection of all Song instances where the artist is current instance
    Song.all.find_all do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end


  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
