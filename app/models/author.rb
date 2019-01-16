class Author

  attr_accessor :articles, :magazines
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end


  def initialize(name)
    @articles = articles
    @magazines = magazines
    @name = name
    @@all << self

  end


  def articles
    Article.all.select do |articled|
      articled.author = self
    end
  end

    def magazines
    self.articles.map do |articled|
      articled.magazine
    end
  end


  def add_article(title, magazine)
    Article.new()

  end

  def show_specialties
    self.magazines.select do |magazine|
      magazine ######
    end
  end







end
