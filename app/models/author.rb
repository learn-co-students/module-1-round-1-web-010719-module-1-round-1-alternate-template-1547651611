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

  def add_article(title, magazine)
    Article.new(self, title, magazine)
  end

  def articles
    Article.all.select do |articles|
      articles.author == self
    end
  end

  def magazines
    articles.map do |my_articles|
      my_articles.magazine
    end
  end

  def show_specialties
    newArr = []
    magazines.select do |my_magazines|
      newArr << my_magazines.category
    end
    newArr.uniq
  end











end #end of class
