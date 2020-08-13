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
  end
end