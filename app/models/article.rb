class Article

  attr_reader :author, :magazine, :title


  @@all = []

  def self.all
    @@all
  end

  def initialize(title,author, magazine)
    @title = title
    @author = author
    @magazine = magazine

    @@all << self
  end

end
