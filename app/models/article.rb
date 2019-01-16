class Article

  attr_reader :magazine, :author
  attr_accessor :title

  @@all = []

    def self.all
      @@all
    end

    ####End of Class Methods ###############

    def initialize(title, author, magazine)
      @title = title
      @author = author
      @magazine = magazine


      @@all << self
    end


    ####End of Instance Methods ###############




  end # end of class
