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

#Iterate through all my magazines until you find a mag that matches given name
  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

#find all my articles - mag
  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

#iterate through all my articles and return an array of their titles - mag
  def article_titles
    articles.map do |article|
      article.title
    end
  end

#iterate through all my articles and return their authors. make unique.
  def contributors
    author_arr = articles.map do |article|
      article.author
    end
    author_arr.uniq
  end

#iterate through all my authors and find the one with the maximum number of articles
  def most_prolific_author
    contributors.max_by do |author|
      author.articles.count
    end
  end

#helper method for last problem. make an array of all the categories
  def self.categories
    self.all.map do |magazine|
      magazine.category
    end
  end

#helper method for last problem. - creating a hash to count each time a category appears in an array
  def self.category_to_hash
    cat_counts = Hash.new(0)
      self.categories.each { |cat| cat_counts[cat] += 1 }
      cat_counts
  end

# create a new array that sorts the cat_count hash from least to greatest,then reverse! to start with greatest
  def self.most_popular_category
    cat_sorted = self.category_to_hash.sort_by do |cat,num|
      num
    end
    cat_sorted.reverse!
  end

end #end of class
