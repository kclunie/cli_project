class CliProject::Movie
  
  attr_accessor :title, :url, :description, :director, :duration
  #attr_reader :movies
  
  @@all = []
  
   def initialize(title=nil, url=nil)
    @title = title
    @url = "https://www.imdb.com" + url
    @description = []
    #@movies = []
    @director = director
    @@all << self
  end

  def self.all
    @@all
  end
  
   #def self.add_movie(movie)
    #@movies << movie
  #end
  
   # def self.add_movie
    #movies = []
    #@movies << scrape_movies
  #end
  
end
