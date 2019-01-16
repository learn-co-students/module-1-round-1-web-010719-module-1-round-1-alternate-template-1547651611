require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

katie = Author.new("Katie")
kevin = Author.new("Kevin")

mag1 = Magazine.new("Art in America", "art")
mag2 = Magazine.new("something", "sports")
mag3 = Magazine.new("blah", "sports")
mag3 = Magazine.new("blah", "art")
mag3 = Magazine.new("blah", "art")
mag3 = Magazine.new("blah", "fun")


article1 = Article.new("art", katie, mag1)
article2 = Article.new("ping pong",kevin, mag1)
article3 = Article.new("cats",katie,mag1)





### DO NOT REMOVE THIS
binding.pry

0
