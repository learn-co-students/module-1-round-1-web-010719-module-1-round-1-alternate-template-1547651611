class Magazine
  attr_accessor :name, :category

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |mag|
      mag.name == name
    end
  end

  def self.most_popular_category
    container = Hash.new(0)

    #goes through all magazines in existence and creates a hash with category => count
    @@all.each do |mag|
      container[mag.category] += 1
    end

    #converts hash into an array [[category, count]] organized in order from least to greatest
    array = container.sort_by {|key, value| value}
    #reverses order so it's greatest to least
    array.reverse!
    #returns an array with only the categories
    array.map do |a|
      a[0]
    end
  end



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

  def contributors
    articles.map do |article|
      article.author
    end
  end

  def article_titles
    articles.map do |a|
      a.title
    end
  end

  def most_prolific_author
    contributors.max_by do |author|
      author.articles.length
    end
  end



end #end of Magazine class
