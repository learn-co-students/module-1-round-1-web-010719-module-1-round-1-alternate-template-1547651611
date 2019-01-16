require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


nyp = Magazine.new("New York Press", "politics")

tdm = Magazine.new("The Daily Mail", "politics")

si = Magazine.new("Sports Illustrated", "sports")

zev = Author.new("Zev")

someone = Author.new("someone")

cats = Article.new(zev, "cats", nyp)

feet = Article.new(zev, "feet", nyp)

cup = Article.new(someone, "cup", nyp)

dogs= Article.new(zev, "dogs", si)

mice = Article.new(zev, "mice", tdm)












### DO NOT REMOVE THIS
binding.pry

0
