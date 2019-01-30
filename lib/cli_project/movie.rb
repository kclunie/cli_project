class CliProject::Movie
  
  attr_accessor :title, :url, :description, :director
  
  @@all = []
  
   def initialize(title=nil, url=nil)
    @title = title
    @url = url
    @description = []
    @director = director
    @@all << self
  end

  def self.all
    @@all
  end
  
  
end
