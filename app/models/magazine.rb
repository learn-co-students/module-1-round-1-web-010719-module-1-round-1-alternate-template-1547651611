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
    Magazine.all.find {|magazines| magazines.name == name}
  end

  def self.magazines_categories
    Magazine.all.map {|magazines| magazines.category}
  end

  def self.magazines_categories_hash
    magazines_categories.inject(Hash.new(0)) {|mch,cat| mch[cat] +=1 ; mch}
  end

  def self.most_popular_category
    #Grab all magazine categories
    #Sort magazine categories by frequency from greatest to least
    magazines_categories_hash.sort_by {|cat,freq| -freq}.map {|cat,freq| cat}
  end

  def articles
    Article.all.select {|articles| articles.magazine == self}
  end

  def article_titles
    articles.map {|article| article.title}
  end

  def contributors
    articles.map {|article| article.author}
  end

  def most_prolific_author
    #Grab all authors that wrote for this magazines
    #Find the greatest author occurence with max_by
    #Return occurence
    contributors.max_by {|magazines| magazines.author}
  end
end
