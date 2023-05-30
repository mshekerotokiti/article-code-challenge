require_relative '../config/environment'
require 'pry'

#authors (name)
author1 = Author.new('Tokiti')
author2 = Author.new('Alex')
author3 = Author.new('Benson')
author4 = Author.new("Shazzy")

# creating magazines (name, category)
magazine1=Magazine.new("Daily nation", "daily")
magazine2=Magazine.new("The Fox", "Weekly")
magazine3=Magazine.new("Heroic Daily", "daily")
magazine4=Magazine.new("Health and fitness", "monthy")

#creating  articles (author, magazine, title)
article1 = Article.new(author4,magazine2,"Into the code")
article3 = Article.new(author1,magazine3,"Intro to Ruby")
article4 = Article.new(author3,magazine4, "Intro to React")


#associations
author1.new_article(magazine_3,"Intro to programming")


binding.pry