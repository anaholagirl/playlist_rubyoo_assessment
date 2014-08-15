require 'rspec'
require 'song'

describe 'Song' do
  it 'initializes with a new song' do
    test_song = Song.new({:name => 'Love Story'})
    expect(test_song).to be_an_instance_of Song
  end

  it 'returns the name of the song' do
    test_song = Song.new({:name => 'Love Story'})
    expect(test_song.name).to eq 'Love Story'
  end

  it 'returns and empty array of songs' do
    expect(Song.all).to eq []
  end

  it 'creates a new song' do
    test_song = Song.new({:name => 'Love Story'})
    test_song.save
    expect(Song.all).to eq [test_song]
  end
end
