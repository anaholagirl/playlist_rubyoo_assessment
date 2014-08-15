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
end
