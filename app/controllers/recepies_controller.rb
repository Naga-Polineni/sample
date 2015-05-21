class RecepiesController < ApplicationController
  
  def index
    @recepies = Recepie.all
  end
  
  def show
    @recepie = Recepie.find(params[:id])
  end
  
  
end
