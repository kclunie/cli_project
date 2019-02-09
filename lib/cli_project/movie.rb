class CliProject::Movie
  
  attr_accessor :title, :url, :description, :director, :writer, :actor, :release_date, :stars
  
  @@all = []
  
   def initialize(title=nil, url=nil)
    @title = title
    @url = "https://www.imdb.com" + url
    @@all << self
  end

  def self.all
    @@all
  end
  
end
