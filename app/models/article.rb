class Article

  attr_reader :title, :author, :magazine
  @@all = []

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    @author
  end

  def magazine
    @magazine
  end
  
end ## END OF ARTICLE CLASS
