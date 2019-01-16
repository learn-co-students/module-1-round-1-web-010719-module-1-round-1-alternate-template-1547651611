class Magazine
  attr_accessor :name, :category

  @@all = []

    def self.all
      @@all
    end

    ####End of Class Methods ###############

  def initialize(name, category)
    @name = name
    @category = category



    @@all << self
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def authors
    self.articles.map do |article|
      article.author
    end
  end

  def self.find_by_name(name)
    Magazine.all.select do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    Magazine.all.map do |magazine|
      magazine.articles
    end
  end

  def contributors

  end

  def most_prolific_author

  end

  def self.most_popular_category
#make an array using all.sorty_by

  end




  ####End of Instance Methods ###############




end # end of class
