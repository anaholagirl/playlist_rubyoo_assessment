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
end
