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
