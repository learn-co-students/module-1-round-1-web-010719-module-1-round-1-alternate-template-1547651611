class Article

  attr_reader :author, :magazine
  @@all = []

  def initialize(author, magazine)
    @author = author
    @magazine = magazine
    @@all << self
  end

  def self.all
    @@all
  end

end
