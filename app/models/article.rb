
class Article
  ####
  #### Joiner Class for Author & Magazine
  ####

  attr_reader :author,:magazine,:title

  @@all = []
  
  def initialize( title,author,magazine)
    @magazine = magazine
    @author = author
    @title = title

    @@all << self
  end

  ###############################################################
  ########### Class Methods
  ###############################################################
  def self.all
    @@all
  end

end # end of Article Class
