class Song

  @@all_songs = []

  attr_accessor :name

  def self.all
    @@all_songs
  end

  def initialize(attributes)
    @name = attributes[:name]
  end

  def save
    @@all_songs << self
  end

  def ==(another_song)
    self.name == another_song.name
  end
end
