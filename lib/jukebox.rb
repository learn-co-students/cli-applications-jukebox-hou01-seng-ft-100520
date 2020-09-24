
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.length.times{|index| puts "#{index + 1}. #{songs[index]}"}
end

def findSong(songs_list,song_name)
  songs_list.each_with_index{|song, index| if song == song_name then return index end}
 nil
end

def play(songs)
  numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
  puts "Please enter a song name or number:"
  choice = gets.strip;
  if (numbers.include?(choice) or songs.include?(choice)) then
    song = findSong(songs, choice) ? songs[findSong(songs, choice)] : songs[choice.to_i - 1]
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def run(songs)
  while true do 
    puts "Please enter a command:"
    choice = gets.strip;
    case choice
    
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end
