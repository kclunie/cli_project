class CliProject::CLI

def call
    #CliProject::Scraper.new.make_newmovies
    puts "Welcome to Upcoming Movies!"
    puts "What movie would you like more information on?"
    url = "https://www.imdb.com/movies-coming-soon/"
    movieoptions = CliProject::Scraper.scrape_movies(url)
    puts movieoptions[0].title
    input = gets.strip.downcase
    case input
    when "red"
      puts "red"
      when "blue"
        puts 'blue'
      end
    #scrape movies
  
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
