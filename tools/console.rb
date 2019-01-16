require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#authors(name)
jane = Author.new("Jane")
mary = Author.new("Mary")
amanda = Author.new("Amanda")

#magazines(name, category)
vogue = Magazine.new("Vogue", "fashion")
people = Magazine.new("People Mag", "pop culture")
us_weekly_fall = Magazine.new("Us Weekly", "pop culture")

us_weekly_spring = Magazine.new("Us Weekly", "pop culture")


#articles(title, author, magazine)
fashion_tips = Article.new("fashion tips", jane, vogue)
celeb_spot = Article.new("celeb spotting", mary, people)
kardashians = Article.new("kardashians", amanda, people)
oscars_news = Article.new("oscar news", jane, people)




### DO NOT REMOVE THIS
binding.pry

0
