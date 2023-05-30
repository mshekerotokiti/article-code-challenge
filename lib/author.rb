class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    # ORM
    def articles
      Article.all.select{|article| article.author.name == self.name}
    end
  
    def magazines
      all_magazines = articles.map{ |article| article.magazine}
      all_magazines.uniq
    end
  
    #Associations and Aggregate methods
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      magazines.collect{|magazine| magazine.category}.uniq
    end
  
end

