# Please copy/paste all three classes into this file to submit your solution!
############ARTICLE CLASSS ~~~############
class Article

  @@all = []

  attr_reader :author, :magazine, :title

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title

    @@all << self
  end

  def self.all
    @@all
  end

end

############ARTICLE CLASSS ~~~############

############AUTHOR CLASSS ~~~############

class Author

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map do |article|
      article.magazine
    end
  end

  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end


  def show_specialties
    magazines.map do |magazine|
      magazine.category
    end
  end

end

############AUTHOR CLASSS ~~~############

############MAGAZINE CLASSS ~~~############
class Magazine

  @@all = []

  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def self.all
    @@all
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

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def most_prolific_author
    contributors.max_by do |author|
      author.articles.length
    end
  end

  ##iterate through each article, find the author
  #count the number of times each
  # contributors.articles.length


  def self.most_popular_category
    magazine_catagories = Magazine.all.map do |magazine|
      magazine.category
    end
    # magazine_catagories.sort_by do |category|
    #   category.count.length.reverse
    # end
  end

  #iterate through each magazine, find their category
  #count how many times the cateogory is in the array
  #sort categories by the occurance of instances in the array
  #return an array of unique categories in order
  #iterate through the category array to ocunt them

end

############Magazine CLASSS ~~~############


############TEST DATA  ~~~############


au1 = Author.new("JKR")
au2 = Author.new("Tolkein")
au3 = Author.new("emily")

m1 = Magazine.new("NY Magazine", "news")
m2 = Magazine.new("NY Post", "news")
m3 = Magazine.new("Poetry Today", "poetry")


a1 = Article.new(au1, m2, "New Rules")
a2 = Article.new(au2, m1, "New Ideas")
a3 = Article.new(au1, m3, "New Thoughts")
a4 = Article.new(au2, m2, "Old Rules")
a5 = Article.new(au2, m1, "Old Ideas")
a6 = Article.new(au3, m3, "Old Thoughts")
a7 = Article.new(au2, m2, "Future Rules")
a8 = Article.new(au2, m1, "Future Ideas")
a9 = Article.new(au3, m3, "Future Thoughts")

############TEST DATA  ~~~############
