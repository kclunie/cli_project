class CliProject::Scraper

  #def get_page
   # page = Nokogiri::HTML(open("https://www.imdb.com/movies-coming-soon/"))
  #end
  
  def self.scrape_movies(url)
    page = Nokogiri::HTML(open(url))
    movies = page.css("div.list_item")
    
    #movies.map do |movie_card|
     # movie = CliProject::Movie.new(movie_card.css("td.overview-top h4 a").text, movie_card.css("td.overview-top h4 a").attributes["href"].value, movie_card.css("div.outline"))
      
    movie_titles = movies.css("td.overview-top h4 a")
    movie_titles.map do |movie_card|
      movie = CliProject::Movie.new(movie_card.text, movie_card.attributes["href"].value)
      
      #movie.description = movies.css("div.outline").text.strip
      #movie.duration = movies.css("p.cert-runtime-genre time").text.strip
      #puts movie.duration
    #puts movie_card.css("td.overview-top h4 a").text
    #CliProject::Movie.movies << movie
    #CliProject::Movie.add_movie
    end
  end
  
  def self.scrape_movie_descriptions(chosen_movie)
    #url = "https://www.imdb.com/movies-coming-soon/"
    page = Nokogiri::HTML(open(chosen_movie.url))
    
    #movies = page.css("div.list_item")
    chosen_movie.description = page.css("div.summary_text").text.strip
    chosen_movie.director = page.css("div.credit_summary_item")[0].text.strip
    chosen_movie.actor = page.css("div.credit_summary_item")[2].text.strip.split("See")
    chosen_movie.writer = page.css("div.credit_summary_item")[1].text.strip.split("3")
    
    chosen_movie.rating = page.css("div.subtext").text.strip.split("|")[0].strip
    chosen_movie.duration = page.css("div.subtext").text.strip.split("|")[1].strip
    #chosen_movie.release_date = page.css("div.subtext").text.strip.split("|")[3].strip
    
    #puts movie_description
    
    
    #movie_descriptions.each do |movie_descrpt|
     # puts movie_descrpt.text.strip
    #end
    
    #movie_director.each do |director|
      #puts movie_director
      #puts movie_actors[0]
      #puts movie_writers[0]
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
  
