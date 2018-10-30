class Song
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
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
    self.class.new(name).save
  end
  #END OF CLASS METHODS

  def save
    @@all << self
  end


end
