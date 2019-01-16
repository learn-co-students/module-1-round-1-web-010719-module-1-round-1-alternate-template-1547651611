class Author
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self

  end

  def add_article(title,magazine)
    Article.new(title,self,magazine)
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

  def show_specialties
    magazines.map do |mag|
      mag.category
    end
  end


end #end of Author class
