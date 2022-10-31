# Please copy/paste all three classes into this file to submit your solution!

#article

class Article

    attr_reader :author, :magazine, :title
    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine =  magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        @author.name
    end


end

#author

class Author
    attr_reader :name
  
  
    def initialize(name)
      @name = name
  
    end
  
    def name
      @name
    end
  
    def articles
      Article.all.select do |article|
        article.author == self
      end
    end
  
    def magazines
      arr = Article.all.select do |article|
        article.author == self
      end
      arr.map.uniq do |article|
        article.magazine
      end
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      arr = Article.all.select do |article|
        article.author == self
      end
      arr.map do |article|
        article.magazine.category
      end.uniq
    end
  
  end

  #magazine

  class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
  
    end
  
    def name
      @name
    end
  
    def category
      @category
    end
  
    def self.all 
      @@all
    end
  
  end