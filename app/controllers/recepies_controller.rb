class RecepiesController < ApplicationController
  
  def index
    @recepies = Recepie.all
  end
  
end
