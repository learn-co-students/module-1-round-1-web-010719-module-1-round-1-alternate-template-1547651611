require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

auth1 = Author.new("Sarah")
auth2 = Author.new("Elbert")
auth3 = Author.new("Janet")
auth4 = Author.new("Donn")

m1 = Magazine.new("Fogue","Fashion")
m2 = Magazine.new("Fizness Insider","Business")
m3 = Magazine.new("FQ","Mens")
m4 = Magazine.new("Fens Health","Mens")
m5 = Magazine.new("Fown & Country","Lifestyle")
m6 = Magazine.new("Feventeen","Lifestyle")
m7 = Magazine.new("Other","Lifestyle")
m8 = Magazine.new("Farie Claire","Fashion")
m9 = Magazine.new("Porter","Fashion")
m10 = Magazine.new("Figh Snobiety","Fashion")

art1 = Article.new(auth1,m1,"blah1")
art2 = Article.new(auth2,m2,"blah2")
art3 = Article.new(auth4,m3,"blah3")
art4 = Article.new(auth4,m5,"blah4")
art6 = Article.new(auth3,m5,"blah5")
art7 = Article.new(auth1,m6,"blah6")
art8 = Article.new(auth3,m8,"blah7")
art9 = Article.new(auth1,m7,"blah8")
art10 = Article.new(auth1,m9,"blah9")
art5 = Article.new(auth4,m10,"blahhhhhhhh")
art5 = Article.new(auth1,m10,"blahhhhhhhh")
art5 = Article.new(auth1,m10,"blahhhhhhhh")
art5 = Article.new(auth1,m10,"blahhhhhhhh")

### DO NOT REMOVE THIS
binding.pry

0
