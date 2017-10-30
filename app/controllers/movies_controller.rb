require 'HTTParty'
require 'pp'
class MoviesController < ApplicationController
    before_action :authenticate_user!
def index
    @movies = Movie.all

end

end
