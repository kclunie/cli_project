class CliProject::Movie
  
  attr_accessor :title, :description
  
  @@all = []
  
   def initialize(title=nil, description=nil)
    @title = title
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end
  
  
end
