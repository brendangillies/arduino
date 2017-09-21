class TemperaturesController < ApplicationController
  
  def create  
    temp = Temperature.new(temp_params) 
    if temp.save 
      render json: temp, status: 201, location: temp
    else 
      render json: temp.errors, status: 422, location: temp
    end 
  end
  
  def index  
    #Last 30 days of data based on 1 measurement per minute of data.
    temperatures = Temperature.last(43200)
    render json: temperatures, status: 200
  end
  
  private 
    
  def temp_params
    params.require(:temperature).permit(:sensor_voltage, :celcius)
  end 
  
end
