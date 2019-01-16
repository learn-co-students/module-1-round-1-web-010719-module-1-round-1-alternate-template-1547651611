class Article

  attr_reader :title, :author, :magazine

  @@all = []

  def initialize(title, author, magazine)
    @author = author
    @magazine = magazine

    @@all << self
  end

  def self.all
    @@all
  end

end


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


class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name }
  end

  def articles
    Article.all.find_all { |article| article.magazine == self }
  end

  def article_titles
    articles.map { |article| article.title }
  end

  def contributors
    articles.map { |article| article.author }
  end

  def most_prolific_author
    most_articles = 0
    most_prolific = nil
    contributors.each do |author|
      if author.articles.length > most_articles
        most_prolific = author
        most_articles = author.articles.length
      end
    end
    most_prolific
  end

  def self.most_popular_category
    category_count = {}
    self.all.each do |magazine|
      category = magazine.category
      #Use tallies instead of integers to sort by length later
      if category_count[category]
        category_count[category] += "1"
      else
        category_count[category] = "1"
      end
    end
    count_array = []
    category_count.each do |category, count|
      category_count << [category, count]
    end
    #sort by length of tallies
    count_array.sort_by { |el| el[2].length }
  end

end
