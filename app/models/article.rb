class Article #this is my join class

  attr_accessor :title, :author, :magazine

  @@all = []

  #array of all article instances
  def self.all
    @@all
  end

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine

    @@all << self
  end

end #end of my Article class
