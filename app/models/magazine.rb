class Magazine

# --Class------------------------------------------------

  attr_accessor :name, :category

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  end

  def self.most_popular_category
    category_hash = Hash.new(0)
    self.all.each {|magazine| category_hash[magazine.category] += 1}
    sorted_hash = category_hash.sort_by {|category, count| count}.reverse
    sorted_hash.map {|category, count| category}
  end

# --Instance---------------------------------------------

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def contributers
    self.articles.map {|article| article.author}
  end

  def article_titles
    self.articles.map {|article| article.title}
  end

  def most_prolific_author
    self.contributers.max_by {|contributer| contributer.articles.length}
  end

end
