class Cli_project::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.imdb.com/movies-coming-soon/"))
  end
  
  
  
end
