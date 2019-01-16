require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###

m1 = Magazine.new("cool magazine", "cool category")
m2 = Magazine.new("dumb magazine", "dumb category")
m3 = Magazine.new("untitled magazine", "dumb category")
m4 = Magazine.new("untitled magazine 2", "untitled category")


au1 = Author.new("bob")
au2 = Author.new("steve")

ar1 = Article.new("cool article", au1, m1)

au1.add_article("about carrots", m2)
au1.add_article("about celery", m2)
au2.add_article("about yams", m1)
au2.add_article("about soup", m1)
au2.add_article("about vegetables in general", m1)











### DO NOT REMOVE THIS
binding.pry

0
