class Magazine
  attr_accessor :name, :category

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.select do |magazines|
      magazines.name == name
    end
  end
#########
#########  get back to this
  def self.most_popular_category
    hash = Hash.new(0)
    @@all.each do |all_magazines|
      hash[all_magazines.category] += 1
    end#at this point i have a hash with the categories and how many times they occured
    hash.sort_by {|key, value| value}
    #now i have an array in order but the amount of times are also in there, i dont know if we want them or not
    #i would need to figure out a way to either get the strings from the start individually or remove the numbers from this array
  end
#########
#########

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def articles
    Article.all.select do |articles|
      articles.magazine == self
    end
  end

  def article_titles
    articles.map do |my_articles|
      my_articles.title
    end
  end

  def contributors
    articles.map do |my_articles|
      my_articles.author
    end
  end

  def most_prolific_author
    hash = Hash.new(0)
    articles.each do |my_articles|
      hash[my_articles.author] += 1
    end
    hash.max_by {|k, v| v}
  end




end #end of class
