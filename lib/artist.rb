class Artist
  attr_accessor :name#, :songs

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
    @genres = Array.new
    @@all << self
  end

  #START OF CLASS METHODS
  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    self.new(name).save
    return self
  end
  #END OF CLASS METHODS

  def save
    @@all << self
  end

  # def add_song(song)
  #   @songs << song
  #   song.artist = self
  # end

  def songs
    @songs
  end

  # def genres
  #   @genres.uniq
  # end

end
