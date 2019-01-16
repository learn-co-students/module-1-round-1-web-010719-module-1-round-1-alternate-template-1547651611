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
    Article.new(title, self, magazine)
  end

  def articles
    Article.all.select { |article| article.author == self }
  end

  def magazines
    Article.all.map { |article| article.magazine }
  end

  def show_specialties
    magazines.map { |magazine| magazine.category }
  end

end
