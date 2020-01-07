class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
    
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    
    genre_hash = Hash.new
      @@genres.uniq.each { |genre| genre_hash[genre] = @@genres.reduce(0) { |memo, element|
        memo += 1 if element == genre
        memo
      }
    }
    
    genre_hash
  end

  def self.artist_count
    
    artist_hash = Hash.new
      @@artists.uniq.each { |artist| artist_hash[artist] = @@artists.reduce(0) { |memo, element|
        memo += 1 if element == artist
        memo
      }
    }
    
    artist_hash
  end
  
end