class Author
  attr_accessor :name

  @@all = []

  #array of all author instances
  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  #array of Article instances the author has written
  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  #array of Magazine instances for which the author has contributed to
  def magazines
    articles.map do |article|
      article.magazine
    end
  end

  #Given a title (as a string) and a magazine (as Magazine instance), this method creates a new Article instance and associates it with that author and that magazine.
  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  #+ Returns an array of categories of the magazines for which the author has contributed to
  def show_specialties
    my_categories = []
    magazines.each do |magazine|
      my_categories << magazine.category
    end
    my_categories
  end

end #end of my Author class
