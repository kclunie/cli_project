class CliProject::Scraper
  
  def self.scrape_movies(url)
    page = Nokogiri::HTML(open(url))
    movies = page.css("div.list_item")
    movie_titles = movies.css("td.overview-top h4 a")
    movie_titles.map do |movie_card|
    movie = CliProject::Movie.new(movie_card.text, movie_card.attributes["href"].value)
    end
  end
  
  def self.scrape_movie_descriptions(chosen_movie)
    page = Nokogiri::HTML(open(chosen_movie.url))
    chosen_movie.description = page.css("div.summary_text").text.strip
    chosen_movie.director = page.css("div.credit_summary_item")[0].text.strip
    chosen_movie.actor = page.css("div.credit_summary_item")[2].text.strip.split("|")[0]
    chosen_movie.writer = page.css("div.credit_summary_item")[1].text.strip.split("|")[0]
    chosen_movie.release_date = page.css("div.info.table-cell p").text.strip
    chosen_movie.stars = page.css("div.imdbRating div.ratingValue").text.strip if page.css("div.imdbRating div.ratingValue").text.strip
  end
  
end