require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
au1 = Author.new("chris")
au2 = Author.new("jon")
au3 = Author.new("joe")
au4 = Author.new("tom")

mag1 = Magazine.new("Nat Geo", "nature")
mag2 = Magazine.new("Vogue", "fashion")
mag3 = Magazine.new("ESPN", "sports")

ar1 = Article.new("wildlife", au1, mag1)
ar2 = Article.new("pandas", au2, mag1)
ar3 = Article.new("clothes", au2, mag2)
ar4 = Article.new("baseball", au3, mag3)
ar5 = Article.new("dogs", au4, mag1)
ar6 = Article.new("ocean", au1, mag1)
ar7 = Article.new("desert", au2, mag1)
ar8 = Article.new("jungle", au2, mag1)
ar9 = Article.new("soccer", au3, mag3)
ar10 = Article.new("football", au3, mag3)
ar11 = Article.new("basketball", au3, mag3)
ar12 = Article.new("swimming", au3, mag3)
ar13 = Article.new("track", au3, mag3)
ar14 = Article.new("hockey", au3, mag3)
#sports = 7, nature = 6, fashion = 





### DO NOT REMOVE THIS
binding.pry

"see ya"
