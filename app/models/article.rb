class Article

  attr_reader :author, :magazine

  @@all = []

  def self.all
    @@all
  end

  def initialize(author, magazine)
    @author = author
    @magazine = magazine
    @@all << self
  end




end #end of Article class
