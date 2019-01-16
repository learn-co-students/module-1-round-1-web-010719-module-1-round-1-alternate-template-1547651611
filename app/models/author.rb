class Author
  attr_reader :name
  #changed from accessor to reader, canot change name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(title, magazine)
    Article.new(title, magazine, self)
  end

  def articles
    Article.all.select do|article|
      article.author == self
    end
  end

  def magazines
    articles.map do|article|
      article.magazine
    end
  end
  #could run uniq on magazines so no repeats, but not specified

  def show_specialties
    specialties_array = magazines.map do|magazine|
      magazine.category
    end
    specialties_array.uniq
  end

end #end of class
