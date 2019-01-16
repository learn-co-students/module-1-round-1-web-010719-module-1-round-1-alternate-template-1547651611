require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

m1 = Magazine.new("New Yorker", "city")
m2 = Magazine.new("Interview", "lifestyle")
m3 = Magazine.new("Cat Fancy", "topical")
m4 = Magazine.new("Salon", "varied")
m5 = Magazine.new("Saveur", "cooking")
m6 = Magazine.new("Bon Appetit", "cooking")

a1 = Author.new("Salinger")
a2 = Author.new("Richard Bratigan")
a3 = Author.new("Mary Karr")
a4 = Author.new("Jim Oseland")

art1 = Article.new(a1, m1)
art2 = Article.new(a4, m5)
art3 = Article.new(a4, m6)
art4 = Article.new(a2, m2)
art5 = Article.new(a3, m3)
art6 = Article.new(a1, m4)
art7 = Article.new(a3, m4)
art8 = Article.new(a3, m1)





### DO NOT REMOVE THIS
binding.pry

0
