require './lib/artist'
require './lib/song'
require 'pry'

def main_menu

    choice = nil
    until choice == 'e'
      puts "Press the corresponding letter to select choice."
      puts "[a] Add an artist"
      puts "[n] Add a new song"
      puts "[l] List all artists"
      puts "[v] View all songs"
      puts "[s] Search for an artist and list songs"
      puts "[x] exit"

      choice = gets.chomp
      case choice
      when 'a'
        add_artist
      when 'n'
        add_song_title
      when 'l'
        list_artists
      when 'v'
        list_songs
      when 's'
        Search
      when 'x'
        puts "Good-bye!"
        exit
      else
        puts "Sorry, that wasn't a valid option."
      end
    end
  end
# end

def add_artist
  puts "What is the name of the artist you want to add?"
  artist_name = gets.chomp
  new_artist = Artist.new({:name => artist_name})
  new_artist.save
  puts "\n\n'#{artist_name}' has been added.\n\n"
end

def add_song_title
  puts "What is the name of the artist of this song?"
  artist_name = gets.chomp
  Artist.all.each do |artist|
    if artist.name == artist_name
      @selected_artist = artist
    else puts "\n\nThis artist is not in your list, but can now been added.\n\n "
      add_artist
    end
  end
  puts "What is the name of the song for this artist?"
  song_title = gets.chomp
  new_song = Song.new({:name => song_title})
  new_song.save
  @selected_artist.add_song(new_song.name)
  puts "\n\n'#{song_title}' has been saved into your playlist.\n\n"
end

def list_artists
  puts "\n\nHere is a list of all artists currently in your playlist: \n\n"
  Artist.all.each { |artist| puts artist.name }
    puts "\n\n"
end

def list_songs
  puts "\n\nHere is a list of all songs currently in your playlist: \n\n"
  Song.all.each { |song| puts song.name }
    puts"\n\n"
end
main_menu

