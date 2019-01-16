class Article

  @@all = []

  attr_reader :title, :magazine, :author

  def initialize(title, magazine, author)
    @title = title
    @magazine = magazine
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end


end #end of class
