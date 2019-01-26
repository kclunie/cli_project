class CliProject::Movie
  
  attr_accessor :title, :description, :director
  
  @@all = []
  
   def initialize(title=nil, description=nil)
    @title = title
    @description = description
    @director = director
    @@all << self
  end

  def self.all
    @@all
  end
  
  
end
