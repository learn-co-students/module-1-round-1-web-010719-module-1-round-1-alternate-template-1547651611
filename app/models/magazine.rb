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

  def self.find_by_name(name)
    @@all.find do |magazine|
      magazine.name == name
    end
  end

  def articles # helper
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def self.most_popular_category # I welcome -- nay, long for -- a better way to do this
    category_hash = Hash.new(0)
    category_array = []
    @@all.each do |magazine|
      category_hash[magazine.category] += 1
      if !category_array.include?(magazine.category)
        category_array << magazine.category
      end
    end
    category_array.sort_by do |category|
      - category_hash[category]
    end
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

  def contributors # authors
    contributors_array = self.articles.map do |article|
      article.author
    end
    contributors_array.uniq
  end

  def most_prolific_author
    self.contributors.max_by do |author|
      author.articles.size
    end
  end
end # end of Magazine
