class Article

  attr_reader :title, :author, :magazine
  @@all = []

  def self.all
    @@all
  end

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine
    @@all << self
  end

end#end of class
