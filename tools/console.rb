require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
a1 = Author.new("Steve")
a2 = Author.new("Lou")
a3 = Author.new("Ann")
a4 = Author.new("Karen")

m1 = Magazine.new("New york times", "news")
m2 = Magazine.new("the sun", "news")
m3 = Magazine.new("the thing", "news")
m4 = Magazine.new("parade", "entertainment")
m5 = Magazine.new("blah", "entertainment")
m6 = Magazine.new("rolling stone", "music")
m6 = Magazine.new("rolling stones", "music")
m6 = Magazine.new("rolling", "music")

a1.add_article("new article", m1)
a1.add_article("new article2", m1)
a2.add_article("new thing", m1)
a1.show_specialties
Magazine.find_by_name("New york times")
m1.article_titles
m1.most_prolific_author
Magazine.most_popular_category




### DO NOT REMOVE THIS
binding.pry

0
