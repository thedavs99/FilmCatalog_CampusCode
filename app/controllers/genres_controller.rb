class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(name: params[:genre][:name])
  
      
    if @genre.save
      flash[:notice] = 'informações foram salvas com sucesso!'
      return redirect_to(new_genre_path)
    end
      
    render :new
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = Movie.published.where(genre_id: @genre.id)
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    if @genre.update(name: params[:genre][:name])
      return redirect_to genre_path(params[:id])
    end
    render :edit
  end
  
end