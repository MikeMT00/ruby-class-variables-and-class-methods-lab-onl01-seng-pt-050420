require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists=[]
  @@genres=[]
  @@genre_count = {}
  @@artist_count = {}


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
    @@genre_count[@genre] = 1
    @@artist_count[@artist] = 1
  end

  def self.count
    @@count
  end

  def self.artists
    @unique_artists = @@artists.uniq
    @unique_artists
  end

  def self.genres
    @unique_genre = @@genres.uniq
    @unique_genre
  end

  def self.genre_count
      format =  @@genres.group_by(&:itself)
     format.each do |genre, occurence|
       @@genre_count[genre] = occurence.length
     end
     @@genre_count
  end

  def self.artist_count
    format =  @@artists.group_by(&:itself)
     format.each do |artist, occurence|
       @@artist_count[artist] = occurence.length
     end
     @@artist_count
  end


end 
