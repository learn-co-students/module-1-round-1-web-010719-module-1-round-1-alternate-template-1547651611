class Magazine

  @@all = []

  attr_accessor :name, :category

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
    articles.map do |article|
      article.author
    end
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def most_prolific_author
    contributors.max_by do |author|
      author.articles.length
    end
  end

  ##iterate through each article, find the author
  #count the number of times each
  # contributors.articles.length


  def self.most_popular_category
    magazine_catagories = Magazine.all.map do |magazine|
      magazine.category
    end
    # magazine_catagories.sort_by do |category|
    #   category.count.length.reverse
    # end
  end

  #iterate through each magazine, find their category
  #count how many times the cateogory is in the array
  #sort categories by the occurance of instances in the array
  #return an array of unique categories in order
  #iterate through the category array to ocunt them

end
