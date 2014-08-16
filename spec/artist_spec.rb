require 'rspec'
require 'artist'
require 'song'

describe 'Artist' do
  it 'initializes with a new artist' do
    test_artist = Artist.new({:name => 'Taylor Swift'})
    expect(test_artist).to be_an_instance_of Artist
  end

  it 'returns the name of the artist' do
    test_artist = Artist.new({:name => 'Taylor Swift'})
    expect(test_artist.name).to eq 'Taylor Swift'
  end

  it 'returns an empty array of artists' do
    expect(Artist.all).to eq []
  end

  it 'creates a new artist' do
    test_artist = Artist.new({:name => 'Taylor Swift'})
    test_artist.save
    expect(Artist.all).to eq [test_artist]
  end

  it 'see an artist as the same if it has the same name' do
    test_artist1 = Artist.new({:name => 'Taylor Swift'})
    test_artist2 = Artist.new({:name => 'Taylor Swift'})
    test_artist1.save
    test_artist2.save
    expect(test_artist1).to eq test_artist2
  end

  it 'adds songs to a particular artist' do
    test_artist = Artist.new({:name => 'Taylor Swift'})
    test_artist.save
    test_song = Song.new({:name => 'Love Story'})
    expect(test_artist.add_song(test_song.name)).to eq [test_song]
  end

  it 'searches for an artist and lists all songs associated with that artist' do
    test_artist = Artist.new({:name => 'Taylor Swift'})
    test_artist.save
    test_song = Song.new({:name => 'Love Story'})
    test_artist.add_song(test_song.name)
    expect(test_artist.list_songs).to eq [test_song]
  end
end
