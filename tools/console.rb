require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

aut1 = Author.new("Sylvia")
aut2 = Author.new("Paths")
aut3 = Author.new("McKenzie")
aut4 = Author.new("Helmut")
aut5 = Author.new("Tolkien")

m1 = Magazine.new("Now","Lifestyle")
m2 = Magazine.new("Times","Lifestyle")
m3 = Magazine.new("Here","Psychology")
m4 = Magazine.new("Where","News")
m5 = Magazine.new("When","Investment")
m6 = Magazine.new("How","Psychology")
m7 = Magazine.new("You","Investment")
m8 = Magazine.new("His","Lifestyle")
m9 = Magazine.new("Her","Lifestyle")


art1 = Article.new("New Way Walking",aut1,m1)
art2 = Article.new("Please now",aut1,m2)
art3 = Article.new("Stand up",aut2,m3)
art4 = Article.new("Sit down",aut3,m4)
art5 = Article.new("Give up",aut3,m5)
art6 = Article.new("Hippity hop",aut3,m6)
art7 = Article.new("Strut",aut4,m7)
art8 = Article.new("Confidence",aut5,m8)
art9 = Article.new("Humble",aut3,m8)
art10 = Article.new("Clickbait",aut3,m8)
art11 = Article.new("Listen",aut4,m9)

### DO NOT REMOVE THIS
binding.pry

0
