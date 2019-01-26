#environment file
require "cli_project/version"

require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './lib/cli_project/scraper'
require_relative './lib/cli_project/movie'
require_relative './lib/cli_project/cli'
require_relative './lib/cli_project/version'



module CliProject
  class Error < StandardError; end
  # Your code goes here...
end
