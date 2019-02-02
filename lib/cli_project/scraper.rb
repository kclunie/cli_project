class CliProject::Scraper

  #def get_page
   # page = Nokogiri::HTML(open("https://www.imdb.com/movies-coming-soon/"))
  #end
  
  def self.scrape_movies(url)
    page = Nokogiri::HTML(open(url))
    movies = page.css("div.list_item")
    movie_titles = movies.css("td.overview-top h4 a")
    movie_titles.map do |movie_card|
      movie = CliProject::Movie.new(movie_card.text, movie_card.attributes["href"].value)
      movie.description = movies.css("div.outline")
      movie.duration = movies.css("p.cert-runtime-genre time").text.strip
      #puts movie.duration
    #puts movie_card.css("td.overview-top h4 a").text
    #CliProject::Movie.movies << movie
    end
  end
  
  def self.scrape_movie_descriptions(chosen_movie)
    #url = "https://www.imdb.com/movies-coming-soon/"
    page = Nokogiri::HTML(open(chosen_movie.url))
    
    #movies = page.css("div.list_item")
    movie_descriptions = page.css("div.summary_text")
    movie_director = page.css("div.credit_summary_item")[0].text.strip
    movie_actors = page.css("div.credit_summary_item")[2].text.strip.split("See")
    movie_writers = page.css("div.credit_summary_item")[1].text.strip.split("3")
    #puts movie_descriptions
    
    #working until here
    movie_descriptions.each do |movie_descrpt|
    #chosen_movie.description << movie_descrpt.text
    puts movie_descrpt.text.strip
    end
    
    #movie_director.each do |director|
      puts movie_director
      puts movie_actors[0]
      puts movie_writers[0]
      #puts movie.duration
    #end
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
  
