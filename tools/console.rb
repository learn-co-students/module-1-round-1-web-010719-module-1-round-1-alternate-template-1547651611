require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

m1 = Magazine.new("Time", "News")
m2 = Magazine.new("Golf", "Sports")
m3 = Magazine.new("NewYorker", "News")

auth1 = Author.new("JD Salinger")
auth2 = Author.new("Hemingway")
auth3 = Author.new("James Patterson")

art1 = Article.new("Trump again", auth1, m1)
art2 = Article.new("Rory wins big", auth2, m2)
art3 = Article.new("NY infrastructure", auth3, m3)






### DO NOT REMOVE THIS
binding.pry

puts "bye bye"
