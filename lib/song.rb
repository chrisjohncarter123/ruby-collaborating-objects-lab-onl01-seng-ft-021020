class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  

  

  
  def self.new_by_filename(file_name)
    values = "#{file_name}".split(" - ")
    
    new_song = self.new(values[1])
    new_song.artist_name = values[0]
    return new_song
    
  end
  
  def self.create_from_filename(file)
  end
  
  def artist_name=(artist_name)
    
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist.add_song(self)
  end
  
  
end

