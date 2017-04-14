class Song

  @@count = 0
  @@genres = []
  @@artists

  def initialize(name, artist, genre)
    @@name = name
    @@artist = artist
    @@artists << artist
    @@genre = genre
    @@genres << genre
    @@count += 1
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def genre
    @@genre
  end

  def name
    @@name
  end

  def artist
    @@artist
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.has_value?(genre)
        genre_hash[genre] += 1
      else
        genre_hash << genre
        genre_hash[genre] += 1
      end
    end
  genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |genre|
      if artist_hash.has_value?(artist)
        artist_hash[artist] += 1
      else
        artist_hash << artist
        artist_hash[genre] += 1
      end
    end
  artist_hash
  end

end
