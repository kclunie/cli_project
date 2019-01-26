class CliProject::CLI

def call
    #CliProject::Scraper.new.make_newmovies
    puts "Welcome to Upcoming Movies!"
    puts "What movie would you like more information on?"
    input = gets.strip.downcase
    case input
    when "red"
      puts "red"
      when "blue"
        puts 'blue'
      end
    #scrape movies
    url = "https://www.imdb.com/movies-coming-soon/"
    CliProject::Scraper.scrape_movies(url)
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

 # def print_movies
  #  movie.all.each.with_index do |movie, index|
   #  puts "#{index}. #{movie.name}"
#    end
 # end

end
