class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(
                        title: params[:movie][:title],
                        release_year: params[:movie][:release_year],
                        director_id: params[:movie][:director_id],
                        sypnosis: params[:movie][:sypnosis],
                        country: params[:movie][:country], 
                        genre_id: params[:movie][:genre_id],
                        running_time: params[:movie][:running_time])
      
    if @movie.save
      flash[:notice] = 'informações foram salvas com sucesso!'
      return redirect_to(new_movie_path)
    end
      
    render :new
  end

  def show
    @movie = Movie.find(params[:id])
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(
                  title: params[:movie][:title],
                  release_year: params[:movie][:release_year],
                  director_id: params[:movie][:director_id],
                  sypnosis: params[:movie][:sypnosis],
                  country: params[:movie][:country], 
                  genre_id: params[:movie][:genre_id],
                  running_time: params[:movie][:running_time])
                      
      return redirect_to movie_path(params[:id])
    end
    render :edit
  end
end