class Magazine
  attr_accessor :name, :category
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find do |magazine|
      magazine.name == name
    end
  end

  def self.most_popular_category
    arr = Article.all.map do |article|
      article.magazine.category
    end
    hash = arr.inject(Hash.new(0)) do |total, cat|
      total[cat] += 1; total
      #gives the number of instances for each category
    end
    hashy = hash.sort_by {|category, value| value}.to_h
    #sort_by changes enumerable to array, need to keep in hash so .to_h
    #stored in new hash
    array = []
    hashy.each do |cat, total|
      array << cat
      # shovel in the category of the mag to an array by their value
    end
    array.reverse
    # need to reverse because its in ascending order
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

  def authors
    articles.map do |article|
      article.author
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def contributors # same as calling all the authors for the instance but you dont want duplicate instances to show up
    arr = authors
    arr.uniq
  end

  def most_prolific_author
    hash = authors.inject(Hash.new(0)) do |total, author|
      total[author] += 1; total
    end
    arr = hash.max_by do |author, total|
      total
    end
    arr.first
  end


end#end of class
