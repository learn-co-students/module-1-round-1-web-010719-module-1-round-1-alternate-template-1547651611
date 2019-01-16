# Please copy/paste all three classes into this file to submit your solution!
class Article

  attr_reader :author, :magazine

  @@all = []

  def self.all
    @@all
  end

  def initialize(author, magazine)
    @author = author
    @magazine = magazine
    @@all << self
  end




end #end of Article class


class Author

  attr_accessor :articles, :magazines
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end


  def initialize(name)
    @articles = articles
    @magazines = magazines
    @name = name
    @@all << self

  end


  def articles
    Article.all.select do |articled|
      articled.author = self
    end
  end

    def magazines
    self.articles.map do |articled|
      articled.magazine
    end
  end


  def add_article(title, magazine)
    Article.new()

  end

  def show_specialties
    self.magazines.select do |magazine|
      magazine ######
    end
  end



end






class Magazine
  attr_accessor :name, :category

  @@all = []

  def self.all
    @@all
  end

  #not working yet
  def self.find_by_name(name)
    self.all.find do |name|
      if self.name = name
        name
      end
    end
  end


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end


  def articles
    Article.all.select do |articled|
      articled.magazine = self
    end
  end

    def authors
    self.articles.map do |articled|
      articled.author
    end
  end

  def contributors
    self.authors.select do |authored|
      authored.author
    end
  end
  #am not remembering above as to what do loop through



end # end of Magazine class
