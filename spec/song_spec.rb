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
end
