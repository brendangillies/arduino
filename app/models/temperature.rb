class Temperature < ApplicationRecord 
  validates :sensor_voltage, presence: true 
  validates :celcius, presence: true
end
