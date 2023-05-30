class Magazine
    attr_accessor :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def magazine_articles
      Article.all.select{|article| article.magazine.name == self.name}
    end
  
    def contributors
      magazine_articles.collect{|article| article.author}.uniq
    end
  
    def self.find_by_name(name)
      find_magazines = self.all.select { |magazine| magazine.name == name}
      find_magazines.first
    end
  
    def article_titles
      magazine_articles.collect{|article| article.title}
    end
  
    def contributing_authors
     
      magazine_authors = magazine_articles.collect{|article| article.author.name}
      magazine_authors.tally.each {|key, value|  value > 2}
      magazine_authors
    end
  end