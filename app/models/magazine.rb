class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  ###############################################################
  ########### Class Methods
  ###############################################################

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |mag|
      mag.name == name
    end
  end

  def self.most_popular_category
    mag_hash = Hash.new(0)
    @@all.each do |mag|
      mag_hash[mag.category]+=1
    end


    #this sorts the hash by value , and
    # puts each [key,value] pair as element in new array
    # -freq specifies it is from GREATEST to LEAST
    sorted_arrhash = mag_hash.sort_by {|cat, freq| -freq}

    #this iterates through the arrah of key value pairs
    # takes only the key from each index and is put into
    # new array of only the Categories
    sorted_arr = sorted_arrhash.map do |el|
      el[0]
    end

    sorted_arr

    # bineding.pry
  end

###############################################################
########### Instance Methods
###############################################################

  def articles
    Article.all.select do |art|
      art.magazine == self
    end
  end

  def contributors
    articles.map do |art|
      art.author
    end
  end

  def article_titles
    articles.map do |art|
      art.title
    end
  end

  def most_prolific_author
    contributors.max_by do |auth|
      auth.articles.length
    end
  end

end #end of Magazine Class
