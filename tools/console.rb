require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###



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






### DO NOT REMOVE THIS
binding.pry

0
