songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if valid_song?(input, songs)
    if input.to_i.between?(1, 9)
      puts "Playing #{songs[input.to_i-1]}"
    else
      puts "Playing #{input}"
    end
  else
    puts "Invalid input, please try again"
  end
end

def valid_song?(input, songs)
  input.to_i.between?(1, 9) || songs.include?(input)
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""

  while (input.downcase != "exit")
    puts "Please enter a command:"
    input = gets.chomp

    case input.downcase
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    else
      puts "Invalid input, Please try again"
    end
  end
end
