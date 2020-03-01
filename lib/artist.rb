

class Artist
  
  attr_accessor :name, :songs
  
  @@all = [] 
  def initialize(name)
    @name = name
    @@all << self
    @songs = []

  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def songs
    return @songs
    result = Songs.all.select{| song | song.artist == self }
    puts result
    return ( result )
  end
  
  def self.find_or_create_by_name(name)
    find = @@all.find{|artist| artist.name == name}
    if( find != nil)
      result = find
    else
      result = Artist.new(name)
    end
    
    return result
  end
  
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end


