class Song
  attr_accessor :name

  @@all = Array.new

  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
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

  def artist
    #self.artist if !self.artist.nil?
  end

end
