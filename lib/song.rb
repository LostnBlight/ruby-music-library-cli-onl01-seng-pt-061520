class Song
  
  attr_accessor :name, :artist, :genre
  
  extend Concerns::Findable
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    self.artist = artist
    self.genre = genre
    save
    
  end
    
  def save
    @@all << self
  end
    
  def self.all
    @@all
  end
    
  def self.destroy_all
    @@all = []
  end
  
  def self.create(name)
    song = Song.new(name)
    song
  end
  
  def self.create_from_filename(filename)
    self.new_from_filename(filename)
  end
  
end