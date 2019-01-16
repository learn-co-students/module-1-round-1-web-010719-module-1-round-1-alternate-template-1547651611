class Author
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

#what are all my articles? - author
  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

#what magazines do i have articles in? - author
  def magazines
    articles.map do |article|
      article.magazine
    end
  end

#i want to add an article to this magazine with this title - author
  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end

#iterate through all my magazines and return an array of all the magazine categories. then if there are repetitions make this array unique
  def show_specialties
    specialty_arr = magazines.map do |magazine|
      magazine.category
    end
    specialty_arr.uniq
  end

end #end of class
