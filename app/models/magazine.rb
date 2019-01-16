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
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    name.map do |magazine_name|
      magazine_name.name
    end
  end

  def contributors
    # a map loop would grab and return an
    # array of all the authors who have written for this magazine
  end

  def most_prolific_author
    # would run like most_popular_category, would make an array then
    # make a loop that would loop through all of the magazine articles
    # an each loop would be easier, and would find the author who's written the most
  end

  def self.most_popular_category
    category_hash = Hash.new(0)
    Magazine.all.each do |category|
      category_hash[category.magazine.name] += 1
    end
    binding.pry
    array = category.max_by {|key, val| val}
    title = array.first
    self.find_by_name(name)
  end

end
