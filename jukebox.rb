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

# Your code here

def run(songs)
  puts "Please enter a command:"
end

def help
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
end

def list(songs)
  songs.each {|x| puts x}
end

def exit_jukebox
  puts "Goodbye!"
end

def play(songs)
  playsong = gets.chomp 
  numbercheck = playsong.to_i

  if numbercheck == 0 
    songs.each_with_index do |value, index| 
      if playsong.downcase == value.downcase 
        puts songs[index]
      end
    end
  else
    if numbercheck > songs.length
      puts "Invalid input, please try again"
    else
      puts songs[(numbercheck-1)]
    end
  end

end






