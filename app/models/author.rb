class Author

  attr_accessor :article, :magazine
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    articles.map {|article| article.magazine}.uniq
  end

  def show_specialties
    magazines.map {|magazine| magazine.category}.uniq
  end

end ## END OF AUTHOR CLASS
