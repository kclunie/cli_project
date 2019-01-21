class Cli_project::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.imdb.com/movies-coming-soon/2019-03/?ref_=cs_dt_nx"))
  end
  
  def scrape_movies_index
    movies = self.get_page.css(".list_item .overview-top")
    movies.each do |title|
    movies.css("h4").text
    end
  end
 
    
      
   # description = movies.css(".outline").text
    
  
  

        
  end
  
end
