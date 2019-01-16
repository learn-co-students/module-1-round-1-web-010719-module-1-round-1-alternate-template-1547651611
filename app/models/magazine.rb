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

  def self.find_by_name(name)
    Magazine.all.select do |magazine|
      magazine.name == name
    end
  end

  ########
  # HELPER METHOD
  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def contributors
    #have to go from the magazine through the article join  table to get to the author names
    binding.pry
  end

  def most_prolific_author

  end

  def self.most_popular_category
    binding.pry
    #have to sort an array of all magazines asc or decs
  end


end #end of class
