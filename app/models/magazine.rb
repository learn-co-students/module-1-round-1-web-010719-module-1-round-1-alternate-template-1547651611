class Magazine
  attr_accessor :name, :category
  #accessor bc can be changed

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
    Magazine.all.find do|magazine|
      magazine.name == name
    end
  end

  def self.most_popular_category
    all_categories = self.all.map do|magazine|
      magazine.category
    end
    sorted_categories = all_categories.sort_by do|category|
      all_categories.count(category)
    end
    sorted_categories.reverse.uniq
  end

  def articles
    #helper method
    Article.all.select do|article|
      article.magazine == self
    end
  end

  def article_titles
    articles.map do|article|
      article.title
    end
  end

  def contributors
    articles.map do|article|
      article.author
    end
  end

  #could make unique, but its a helper method and unique not specified, did unique below

  def unique_contributors
    contributors.uniq
  end

  # def most_prolific_author
  #   contributors = contributors
  #   contributors.max_by do|contributor|
  #     conrtibutors.count(contributor)
  #   end
  # end

  def most_prolific_author
    sortred_contributors = contributors.sort_by do|contributor|
      contributors.count(contributor)
    end
    sortred_contributors.reverse[0]
  end

end #end of class
