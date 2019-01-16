class Author

# --Class-----------------------------------------------
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

# --Instance---------------------------------------------

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_article(title, magazine)
    Article.new(self,magazine,title)
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    self.articles.map {|article| article.magazine}
  end

  def show_specialties
    mag_specialties = self.magazines.map {|magazine| magazine.category}
    mag_specialties.uniq
  end

end
