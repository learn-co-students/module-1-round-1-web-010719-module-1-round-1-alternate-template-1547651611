class Author
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
    Article.new(self, magazine)
  end

  def articles
    author.map do |aut|
      aut.articles
    end
  end

  def magazines
    author.map do |magazine|
      magazine.magazines
    end
  end

  def show_specialities
    category.map do |cat|
      cat.category
    end
  end

end
