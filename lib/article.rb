class Article

    attr_reader :magazine, :title, :author
        @@all = []
        def initialize(author, magazine, title)
            @author = author
            @magazine = magazine
            @title = title
            @@all << self
          end
    
      def self.all
        @@all
      end
      
    #ORM
      def author
        @author
      end 
      def magazine 
        @magazine
      end
    end