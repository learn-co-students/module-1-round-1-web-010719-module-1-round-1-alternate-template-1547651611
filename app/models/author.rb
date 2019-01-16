class Author
  attr_accessor :name
  attr_reader

  @@all = []

    def self.all
      @@all
    end

    ####End of Class Methods ###############

    def initialize(name)
      @name = name

      @@all << self
    end

    def articles
      Article.all.select do |article|
        article.author == self
      end
    end

    def magazines
      self.articles.map do |article|
        article.magazine
      end
    end

    def add_article(title, magazine)
      Article.new(title, self, magazine)
    end

    def magazines
      # Returns an array of Magazine instances for which
      # the author has contributed to
      #so maybe using .map since we have all info we need from
      # above methods just take out the magazine name
      self.magazines.map do |magazine|
        magazine.name
      end
    end

    def show_specialties
      #would use select to get all categories
    end

    ####End of Instance Methods ###############

  end # end of class
