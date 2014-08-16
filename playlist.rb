require './lib/artist'
require './lib/song'

def main_menu
  system('clear')
  loop do
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
        add_song
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
end

def add_artist
  puts "What is the name of the artist you want to add?"
  artist_name = gets.chomp
  new_artist = Artist.new({:name => 'artist_name'})
  puts "\n\n'#{artist_name}' has been added.\n\n"
end
main_menu

