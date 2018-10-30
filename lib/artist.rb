class Artist
  attr_accessor :name, :songs

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = songs
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

end
