class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end
  def new
    @director = Director.new
  end

  def create
    @director = Director.new(
                        name: params[:director][:name],
                        last_name: params[:director][:last_name],
                        birth_day: params[:director][:birth_day]    
    )
      
    if @director.save
      flash[:notice] = 'informações foram salvas com sucesso!'
      return redirect_to(new_director_path)
    end
      
    render :new
  end

  def show
    @director = Director.find(params[:id])
  end
  
  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    if @director.update(
                      name: params[:director][:name],
                      last_name: params[:director][:last_name],
                      birth_day: params[:director][:birth_day] )
                      
      return redirect_to director_path(params[:id])
    end
    render :edit
  end
    

end