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
    Magazine.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    Article.all.select {|article| article.magazine == self}
  end

  def contributors
    article_titles.map {|article| article.author}
  end

  def most_prolific_author
    article_titles.max_by {|article| article.author.length}
    ##does not work! was trying to get each author into individual arrays of articles they had written, then compare length and output the longest one (most articles).
  end

  def self.most_popular_category
    Magazine.all.sort_by{|magazine| magazine.category.length}.reverse
  end

  ## also does not work... trying to do a similar thing as above, but is sorting alphabetically rather than by occurrence. feel confident I could figure this out with a bit more time but ran out!

end ## END OF MAGAZINE CLASS
