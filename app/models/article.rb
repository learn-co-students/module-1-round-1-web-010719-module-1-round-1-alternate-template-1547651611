class Article

  attr_reader :author, :magazine
  attr_accessor :title

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

end
