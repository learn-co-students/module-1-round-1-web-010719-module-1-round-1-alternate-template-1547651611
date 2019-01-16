class Author

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
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
    Article.new(self, magazine, title)
  end


  def show_specialties
    magazines.map do |magazine|
      magazine.category
    end
  end

end
