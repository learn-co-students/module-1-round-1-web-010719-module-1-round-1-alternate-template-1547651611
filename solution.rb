###############################################################################
############################# HAVE MERCY!!! ###################################
###############################################################################

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

###############################################################################

class Magazine

  attr_accessor :name, :category

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.find_by_name(name)
    @@all.find do |magazine|
      magazine.name == name
    end
  end

  def articles # helper
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def self.most_popular_category # I welcome -- nay, long for -- a better way to do this
    category_hash = Hash.new(0)
    category_array = []
    @@all.each do |magazine|
      category_hash[magazine.category] += 1
      if !category_array.include?(magazine.category)
        category_array << magazine.category
      end
    end
    category_array.sort_by do |category|
      - category_hash[category]
    end
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

  def contributors # authors
    contributors_array = self.articles.map do |article|
      article.author
    end
    contributors_array.uniq
  end

  def most_prolific_author
    self.contributors.max_by do |author|
      author.articles.size
    end
  end
end # end of Magazine

###############################################################################

class Article

  attr_reader :author, :magazine
  attr_accessor :title

  @@all = []

  def self.all
    @@all
  end

  def initialize(author, magazine, title="") # made title effectively optional
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end
end # end of Article
