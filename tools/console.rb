require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

puts "hello"
au1 = Author.new("Lewis")
au2 = Author.new("John")

m1 = Magazine.new("Rolling Stones", "music")
m2 = Magazine.new("Equire", "comedy")
m3 = Magazine.new("comedy mag", "comedy")


ar1 = Article.new("1st article", m1, au2)
ar2 = Article.new("another article", m2, au2)
ar3 = Article.new("2nd article", m2, au2)
ar4 = Article.new("3rd article", m2, au1)

### DO NOT REMOVE THIS
binding.pry

0
