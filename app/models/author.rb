class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(title,magazine)
    Article.new(title,self,magazine)
  end

  def articles
    Article.all.select {|articles| articles.author == self}
  end

  def magazines
    articles.map {|article| article.magazine}
  end

  def show_specialties
    magazines.map {|categories| categories.category}
  end
end
