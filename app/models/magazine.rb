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

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributors
    self.articles.map do |article|
      article.author
    end
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine|
      magazine.name == name}
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

  def most_prolific_author
    hash = Hash.new(0)
    Article.all.each do |article|
      hash[article.author] += 1
    end
    hash = hash.max_by {|key, val| val}
    hash.first
  end

  def self.most_popular_category
    hash = Hash.new(0)
    Magazine.all.each do |magazine| #gets the count
      hash[magazine.category] += 1
    end
    arr = []
    hash = hash.sort_by { |h, k| k } #sorts by the count
    hash.reverse! #puts in reverse order from greatest to least
    hash.each do |x, y| #puts in array
      arr << x
    end
    arr
  end

end
