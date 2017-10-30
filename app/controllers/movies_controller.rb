require 'HTTParty'
require 'pp'
class MoviesController < ApplicationController
    before_action :authenticate_user!
def index
    @movies = movies.map do |movie|
        url = "http://www.omdbapi.com/?i=#{movie.omdb_id}&apikey=d31f1a94"
        response = HTTParty.get(url)
        response_body = JSON.parse(response.body)
  
        movie.title = response_body['Title']
        movie.release_year = response_body['Year']
        movie.rating = response_body['Rated']
        movie
    end

end

end
