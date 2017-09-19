class TemperaturesController < ApplicationController
  
  def create
  end
  
  def index  
    temperatures = Temperature.all
    render json: temperatures, status: 200
  end
  
  
  private 
    
  def temp_params
    
  end
end
