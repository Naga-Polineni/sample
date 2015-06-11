class ChefsController < ApplicationController

def index 
  
  @chef = Chef.all
  
end

def show
  
  @chef = Chef.find(params[:id])
  
end



end
