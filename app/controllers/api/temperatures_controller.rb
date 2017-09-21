module Api
  class TemperaturesController < ApplicationController
    def create  
      temp = Temperature.new(temp_params) 
      if temp.save 
        render json: temp, status: 201, location: [:api, temp]
      else 
        render json: temp.errors, status: 422, location: [:api, temp]
      end 
    end
  
    def index  
      #Last 30 days of data based on 1 measurement per minute of data.
      temps = Temperature.last(43200)
      render json: temps, status: 200
    end
  
    def destroy 
      temp = Temperature.find(params[:id]).destroy!
      head :no_content
    end
  
    private 
    
    def temp_params
      params.require(:temperature).permit(:sensor_voltage, :celcius)
    end 
  end
end