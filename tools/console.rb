require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###
auth1 = Author.new("auth1")
auth2 = Author.new("auth2")
auth3 = Author.new("auth3")
auth4 = Author.new("auth4")

mag1 = Magazine.new("mag1", "science")
mag2 = Magazine.new("mag2", "tech")
mag3 = Magazine.new("mag3", "lit")
mag4 = Magazine.new("mag4", "lit")
mag5 = Magazine.new("mag5", "lit")
mag6 = Magazine.new("mag6", "tech")

art1 = Article.new(auth1, mag1, "art1")
art2 = Article.new(auth2, mag2, "art2")
art3 = Article.new(auth3, mag3, "art3")
art4 = Article.new(auth4, mag4, "art4")
art5 = Article.new(auth1, mag1, "art5")
art6 = Article.new(auth1, mag2, "art6")
art7 = Article.new(auth2, mag2, "art7")
art8 = Article.new(auth3, mag4, "art8")

art9 = auth4.add_article(mag1, "art9")

auth1.articles
auth2.articles
auth3.articles

auth1.magazines
auth3.magazines

auth1.show_specialties

Magazine.find_by_name("mag1")

mag1.articles

mag1.article_titles

mag1.contributors
mag2.contributors
mag4.contributors

mag1.most_prolific_author

### last bugger
Magazine.most_popular_category


### DO NOT REMOVE THIS
binding.pry

0
