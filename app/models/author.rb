class Author
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name

    @@all << self
  end


  ###############################################################
  ########### CLass Methods
  ###############################################################

  def self.all
    @@all
  end

  ###############################################################
  ########### Instance Methods
  ###############################################################
  def articles
    Article.all.select do |a|
      a.author == self
    end
  end

  def magazines
    articles.map do |a|
      a.magazine
    end
  end

  def show_specialties
    mag_cat = magazines.map do |m|
      m.category
    end
    # mag_cat.uniq #returns only unique categories
    mag_cat

  end

  def add_article(title, magazine)
    Article.new( title,self,magazine)
  end
end #end of Author Class
