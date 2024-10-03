class HomeController < ApplicationController
  def index
    @movies = Movie.where(release_year: Date.today.year)   
  end
end