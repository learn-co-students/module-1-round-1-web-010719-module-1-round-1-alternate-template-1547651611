class Author
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map do |article|
      article.magazine
    end
  end

  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  def show_specialties
    magazines.map do |magazine|
      magazine.category
    end
  end

end #end of class
