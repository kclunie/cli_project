class CliProject::Movie
  
  attr_accessor :title, :description, :director
  
  @@all = []
  
   def initialize(title=nil, director=nil)
    @title = title
    @description = []
    @director = director
    @@all << self
  end

  def self.all
    @@all
  end
  
  
end
