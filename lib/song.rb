class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artists, genres)
    @@count += 1 
    @@genres << genres
    @@artists << artists 
  end
  
  def self.count 
    @@count
  end 
  
  def self.genres 
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end 
  
  def self.genre_count
    frequency = Hash.new(0)
    @@genres.each {|song| frequency[song] += 1}
    puts frequency
  end
  def self.artist_count
  end
end