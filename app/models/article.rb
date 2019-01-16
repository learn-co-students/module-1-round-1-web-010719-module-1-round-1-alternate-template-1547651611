class Article

  attr_reader :author, :magazine
  attr_accessor :title

  @@all = []

  def self.all
    @@all
  end

  def initialize(author, magazine, title="") # made title effectively optional
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end
end # end of Article
