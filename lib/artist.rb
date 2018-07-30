class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name=nil)
    @songs = []
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  

  def add_song(new_song)
    new_song.artist = self
    @songs << new_song
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end
  
  def self.song_count
    artist_songs = Song.all.map {|song| song.artist == self}
    artist_songs.length
  end
  
end