class CliProject::CLI

def call
    #CliProject::Scraper.new.make_newmovies
    puts "Welcome to Upcoming Movies!"
    puts "What movie would you like more information on?"
    scrape_movies
    #print_movies
    #choose_movie
    
    #input = gets.strip.downcase
    #case input
    #when "red"
     # puts "red"
      #when "blue"
       # puts 'blue'
      #end
    #scrape movies
  
  end

  def print_movies
    CliProject::Movie.all.each.with_index(1) do |movie, index|
     puts "#{index}. #{movie.title}"
    end
  end

 def scrape_movies
    url = "https://www.imdb.com/movies-coming-soon/"
    movieoptions = CliProject::Scraper.scrape_movies(url)
    puts movieoptions[1].title
    puts movieoptions[1].url
  end

  def choose_movie
    puts "\nChoose a movie by selecting a number:"
    input = gets.strip.to_i 
    max_value = CliProject::Movie.all.length 
    if input.between?(1,max_value)
      chosen_movie = CliProject::Movie.all[input-1]
      display_movie_description(chosen_movie)
    else
      puts "\nPlease put in a valid input"
      print_movies #list_categories
      choose_movie
    end
  end
  
    def display_movie_description(chosen_movie)
    CliProject::Scraper.scrape_movie_descriptions(chosen_movie)
    chosen_movie.description 
  end


#  def start
 #   print_movies
  #  puts "What movie would you like more information on?"
  #  input = gets.strip.to_i

   # movie = CliProject::Movie.find(input.to_i)

  #  print_movie(movie)

   # puts ""
  #   puts "Would you like to see another movie? Enter Y or N"

   # input = gets.strip.downcase
  #  if input == "y"
   #   start
  #  elsif input == "n"
   #   puts "Thank you! Have a great day!"
    #  exit
  #  else
   #   puts "I don't understand that answer."
    #  start
  #  end
#  end

  #def print_movies
   # movies.all.each.with_index do |movie, index|
    # puts "#{index}. #{movie.title}"
  #  end
#  end

end
