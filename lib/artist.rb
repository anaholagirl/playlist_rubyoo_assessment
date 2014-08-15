class Artist

  @@all_artists = []

  attr_accessor :name

  def initialize(attributes)
    @name = attributes[:name]
    @songs = []
  end
end
