class RecepiesController < ApplicationController
  
  def index
    @recepies = Recepie.all
  end
  
  def show
    @recepie = Recepie.find(params[:id])
  end
  
  def new
    @recepie = Recepie.new
  end
  
  def create
    @recepie = Recepie.new(request_params)
    @recepie.chef = Chef.find(1)
  
    if @recepie.save
      flash[:success] = "Recepie has been added"
      redirect_to recepies_path
    else 
    render :new
    end
  
  end
  
  private 
    
    def request_params
      params.require(:recepie).permit(:name,:summary,:description)
    end
  
end
