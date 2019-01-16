require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
a1 = Author.new("bob")
a2 = Author.new("mike")
a3 = Author.new("john")

m1 = Magazine.new("si", "sports")
m2 = Magazine.new("time", "world")
m3 = Magazine.new("nick", "family")

ar1 = Article.new(a1, m1, "money")
ar2 = Article.new(a1, m1, "sports")
ar3 = Article.new(a1, m1, "politics")








### DO NOT REMOVE THIS
binding.pry

0
