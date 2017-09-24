class LandingController < ApplicationController
  def index 
    @temps = Temperature.all
  end
end
