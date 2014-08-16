class Artist

  @@all_artists = []

  attr_accessor :name

  def self.all
    @@all_artists
  end

  def initialize(attributes)
    @name = attributes[:name]
    @songs = []
  end

  def save
    @@all_artists << self
  end

  def ==(another_artist)
    self.name == another_artist.name
  end

  def add_song(song)
    @songs << Song.new({:name => song})
  end

  def list_songs
    @songs
  end
end
