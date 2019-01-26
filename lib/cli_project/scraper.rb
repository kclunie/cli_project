class CliProject::Scraper

  #def get_page
   # page = Nokogiri::HTML(open("https://www.imdb.com/movies-coming-soon/"))
  #end
  
  def self.scrape_movies(url)
    #puts "now in scrape_movies method"
    page = Nokogiri::HTML(open(url))
    movies = page.css("div.list_item")
    movie_titles = movies.css("td.overview-top h4 a")
    movie_titles.map do |movie_card|
      CliProject::Movie.new(movie_card.text)
    #puts movie_card.css("td.overview-top h4 a").text
    end
  end
  
  
  #def scrape_movies_index
   # movies = page.css("div.list_item").text
  #end
 
  
  #def movie_title
   # movies.each do |movie_card|
    #  title = puts movie_card.css("td.overview-top h4 a").text
    #end
  #end
  
  
    #def movie_descriptions
     # movies.each do |d|
      #  d.css("div.outliine").text
      #end
    #end
    
  
  

        
  end
  
