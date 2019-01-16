class Article

  attr_reader :author, :title, :magazine

  @@all = []

  def self.all
    @@all
  end

  def initialize(author, title, magazine)
    @author = author
    @title = title
    @magazine = magazine

    @@all << self
  end


end #end of class
