require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


#magazines
vogue = Magazine.new("vogue", "fashion")
nytimes = Magazine.new("new york times", "news")
people = Magazine.new("people", "celebrity")
rd = Magazine.new("readers digest", "books")
sliving = Magazine.new("southern living", "home")
theedit = Magazine.new("theedit", "fashion")
hgtvmag = Magazine.new("homie home home", "home")
decor = Magazine.new("decor", "home")



#authors
mc = Author.new ("Maria Cristina")
mymom = Author.new ("My Mom")
jk = Author.new ("JK Rowling")
jd = Author.new ("JD Salinger")

#articles (author, magazine, title, category)
a1 = Article.new(mc, vogue, "i like clothes")
a2 = Article.new(mc, nytimes, "news...")
a3 = Article.new(mc, nytimes, "more news")
a10 = Article.new(mc, nytimes, "newsies")
a11 = Article.new(mc, nytimes, "newww")

a4 = Article.new(mymom, vogue, "my mom likes clothes")

a5 = Article.new(jk, nytimes, "harry potter rules")
a6 = Article.new(jk, rd, "dumbledore")
a5 = Article.new(jk, sliving, "hedwig flies south")
a5 = Article.new(jk, rd, "hermione")
a6 = Article.new(jd, rd, "phony phony")

a12 = Article.new(jd, people, "people r phonies")












### DO NOT REMOVE THIS
binding.pry

0
