class CliProject::Movie
  
  attr_accessor :title, :url, :description, :director, :duration, :doc
  #attr_reader :movies
  
  @@all = []
  
   def initialize(title=nil, url=nil)
    @title = title
    @url = "https://www.imdb.com" + url
    #@description = description
    #@movies = []
    @@all << self
  end

  def self.all
    @@all
  end
  
  
  #def description
   # @description ||= doc.css("div.outline").text
  #end

  #def doc
   # @doc ||= Nokogiri::HTML(open(self.url))
   #  page = Nokogiri::HTML(open(self.url))
  #  @doc ||= page.css("div.list_item")
#  end
  
  
   #def self.add_movie(movie)
    #@movies << movie
  #end
  
   # def self.add_movie
    #movies = []
    #@movies << scrape_movies
  #end
  
end
