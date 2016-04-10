# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: Alec Henderson].
# I spent [#] hours on this challenge.


# Pseudocode



# Refactored Solution



class Song
  attr_reader :title, :artist
  
  def initialize(title, artist)
    @title = title
    @artist = artist
  end
  
  def play
    puts @title
  end
end

class Playlist
  attr_reader :play_list
  
  def initialize(*song)
    @playlist = song
  end
  
  def add(*song)
    @playlist.concat(song)
  end
  
  def num_of_tracks
    @playlist.length
  end

  def remove(song)
    @playlist.delete(song)
  end
  
  def includes?(song)
    @playlist.include?(song)
  end
  
  def play_all
    puts "Playing now:"
    @playlist.each { |song| puts "#{song.title} by #{song.artist}" }
  end
  
  def display
    puts "Songs on playlist: " 
    @playlist.each { |song| puts "#{song.title} by #{song.artist}" }
  end
end

# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
=begin
What concepts did you review in this challenge?
This was a nice review for classes. We reviewed initializing classes, creating class methods, and working with instance varaibles. I wish we had to create class variables!

What is still confusing to you about Ruby?
Class variables are a little iffy for me, as well as passing information between classes.

What are you going to study to get more prepared for Phase 1?
I want to review my notes for each langauge. It's hard to belive there are so many! I'll look back at my notes and probably research a couple things I'm fuzzy on.
=end
