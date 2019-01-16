class Magazine
  attr_accessor :name, :category

  @@all = []

  #array of all mag instances
  def self.all
    @@all
  end

  #Given a string of magazine's name, this method returns the first magazine object that matches
  ###only want to get one object back, so use find method to find the first one that matches my name argument
  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  #Returns an array of most popular categories for magazines in order from _Greatest to Least_
  #i am a magazine and I want to look at all magazines and see which category has the most occurances
  #i want all my articles to be stored in an array, where the first element = the most popular category (most # of occurances)
  #going to create a hash where key=category, value = number of occurances
  #then want to sort hash by value(# of occurances), where first key/val pair == greatest value
  def self.most_popular_category
    category_arr = []
    self.all.select do |magazine|
      category_arr << magazine.category
    end
      # binding.pry
      counts = Hash.new(0)
      category_arr.each { |category| counts[category] += 1 }
      counts.map{ |category, count| ["#{category} = #{count}"] }.join(', ')
      binding.pry
      #i was able to get this to return a string that associates the category and count. I think I would have needed to make this an array and then sort by count to have the category with largest num of occurances at beginning
  end

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  #array of Article instances the magazine has
  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  #all of the authors who have written for this magazine
  def contributors
    articles.map do |article|
      article.author
    end
  end

  #array of the titles of all articles written for that magazine
  def article_titles
    my_titles = []
    articles.select do |article|
      my_titles << article.title
      # binding.pry
    end
    my_titles
  end

  # Returns the author who has written the most articles for this magazine
  #I am a magazine, I want to find my authors and then see which author has written the most articles that belong to my mag
  #I already built a contributors method that gives me all the author instances that have articles in my mag
  #so now I want to go through their articles and get the # of articles they have in my mag and return the author instance with the highest num of articles
  def most_prolific_authors
    contributors.each do |contributor|
      contributor.articles.each do |article|
        article.magazine == self
      end
      binding.pry
    end
  end

end #end of my Magazine class
