require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("Mike")
a2 = Author.new("Humzah")
a3 = Author.new("Zach")
a4 = Author.new("Alex")

a1.name

m1 = Magazine.new("Nat Geo", "Anthropology, Natural Sciences")
m2 = Magazine.new("Rolling Stone", "Pop Music, Politics")
m3 = Magazine.new("New Yorker", "Short Stories, Essays")
m4 = Magazine.new("Vogue", "Pretty Much Just Ads")
m5 = Magazine.new("WSJ", "Pretty Much Just Ads")
m6 = Magazine.new("Business News Vaguely", "Pretty Much Just Ads")

m1.name
m1.category

a1.add_article("Ar1a", m1)
a1.add_article("Ar1b", m1)
a1.add_article("Ar1c", m1)
a2.add_article("Ar2a", m1)
a2.add_article("Ar2b", m2)
a2.add_article("Ar2c", m3)
a3.add_article("Ar3a", m1)
a3.add_article("Ar3b", m1)
a3.add_article("Ar3c", m1)
a3.add_article("Ar3d", m1)
a4.add_article("Ar4a", m1)
a4.add_article("Ar4b", m2)
a4.add_article("Ar4c", m3)
a4.add_article("Ar4d", m4)
a4.add_article("Ar4e", m1)

puts Author.all == ["Mike", "Humzah", "Zach", ""]
puts Article.all == ["Ar1a", "Ar1b", "Ar1c", "Ar2a", "Ar2b", "Ar2c", "Ar3a", "Ar3b", "Ar3c", "Ar3d", "Ar4a", "Ar4b", "Ar4c", "Ar3d", "Ar4e"]
puts Magazine.all == ["Nat Geo", "Rolling Stone", "New Yorker", "Vogue", "WSJ", "Business News Vaguely"]

puts a1.articles == ["Ar1a", "Ar1b", "Ar1c"]
puts a2.articles == ["Ar2a", "Ar2b", "Ar2c"]
puts a3.articles == ["Ar3a", "Ar3b", "Ar3c", "Ar3d"]
puts a4.articles == ["Ar4a", "Ar4b", "Ar4c", "Ar3d", "Ar4e"]

puts a1.magazines == ["Nat Geo"]
puts a2.magazines == ["Nat Geo", "Rolling Stone", "New Yorker"]
puts a3.magazines == ["Nat Geo"]
puts a4.magazines == ["Nat Geo", "Rolling Stone", "New Yorker", "Vogue"]

puts m1.categories == ["Anthropology, Natural Sciences"]

### DO NOT REMOVE THIS
binding.pry

0
