require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

auth1 = Author.new('Brian')
auth2 = Author.new('Chad')
auth3 = Author.new('David')
auth4 = Author.new('Edmond')
auth5 = Author.new('Fred')

mag1 = Magazine.new('1Magazine','tech')
mag2 = Magazine.new('2Magazine','cars')
mag3 = Magazine.new('3Magazine','tech')
mag4 = Magazine.new('4Magazine','tech')
mag5 = Magazine.new('5Magazine','airplanes')
mag6 = Magazine.new('6Magazine','architecture')
mag7 = Magazine.new('7Magazine','airplanes')

auth1.add_article('phones',mag1)
auth1.add_article('tv',mag1)

auth2.add_article('laptops',mag1)

auth1.add_article('trucktires',mag2)


auth3.add_article('wings',mag5)
auth3.add_article('techystuff',mag1)

art1 = Article.new('Top Laptops of 2019',auth3,mag4)

puts '###############################################'
puts 'Author tests:'
puts '###############################################'
puts auth1.name
puts Author.all
puts auth1.articles
puts auth1.magazines
puts auth1.show_specialties

puts '###############################################'
puts 'Article tests:'
puts '###############################################'

puts Article.all
puts art1.author
puts art1.magazine

puts '###############################################'
puts 'Magazine tests:'
puts '###############################################'

puts mag1.name
puts mag5.category
puts Magazine.all

findmag6 = Magazine.find_by_name('6Magazine')
puts findmag6

puts mag1.article_titles
puts "mag1.contributors"
puts mag1.contributors
puts "mag1.most_prolific_author\n"
puts mag1.most_prolific_author
puts "Magazine.most_popular_category:\n"
print Magazine.most_popular_category








### DO NOT REMOVE THIS
binding.pry

0
