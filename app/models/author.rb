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