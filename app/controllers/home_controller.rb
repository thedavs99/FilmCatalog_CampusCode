class HomeController < ApplicationController
  def index
    @movies = Movie.where(release_date: Date.new(Date.today.year).beginning_of_year..Date.today)   
  end
end