class Artist
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
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

  # def add_song
  #   self.songs << self
  # end

  def songs
    @songs
  end

end
