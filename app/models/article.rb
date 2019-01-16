class Article

# --Class------------------------------------------------

  attr_reader :author, :magazine, :title

  @@all = []

  def self.all
    @@all
  end

# --Instance----------------------------------------------

  def initialize(author, magazine,title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end


end
