class CliProject::CLI

  def call
    puts "Welcome to Upcoming Movies!".colorize(:yellow)
    puts "What movie would you like more information on?".colorize(:green)
    scrape_movies
    print_movies
    choose_movie
  end

  def print_movies
    CliProject::Movie.all.each.with_index(1) do |movie, index|
     puts "#{index}. #{movie.title}"
    end
  end

  def scrape_movies
    url = "https://www.imdb.com/movies-coming-soon/"
    movieoptions = CliProject::Scraper.scrape_movies(url)
  end

  def choose_movie
    puts "\nChoose a movie by selecting a number:".colorize(:green)
    input = gets.strip.to_i 
    max_value = CliProject::Movie.all.length 
    if input.between?(1,max_value)
      chosen_movie = CliProject::Movie.all[input-1]
      display_movie_description(chosen_movie)
    else
      puts "\nPlease put in a valid input"
      print_movies
      choose_movie
    end
  end
  
  def display_movie_description(chosen_movie)
    CliProject::Scraper.scrape_movie_descriptions(chosen_movie)
    puts "\nDescription: #{chosen_movie.description}"
    puts chosen_movie.director
    puts chosen_movie.actor 
    puts chosen_movie.writer 
    puts chosen_movie.release_date
    puts chosen_movie.stars if chosen_movie.stars
    second_menu
  end
  
  def second_menu
    puts "\nWould you like to see another movie? Type 'Y'".colorize(:green)
    puts "Would you like to exit? Type 'E'".colorize(:green)
    input = gets.strip.upcase
    if input == "Y"
       print_movies
       choose_movie
    elsif input == "E"
      puts "Goodbye!".colorize(:red)
    else
      puts "Sorry I couldn't understand that command"
      second_menu
    end
  end
  
end
