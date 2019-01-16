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

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    magazines_array = self.articles.map do |article|
      article.magazine
    end
    magazines_array.uniq
  end

  def show_specialties
    specialties_array = self.magazines.map do |magazine|
      magazine.category
    end
    specialties_array.uniq
  end
end # end of Author
