class DirectorsController < ApplicationController

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

end