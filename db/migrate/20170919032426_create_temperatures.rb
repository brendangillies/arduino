class CreateTemperatures < ActiveRecord::Migration[5.0]
  def change
    create_table :temperatures do |t|
      t.float :sensor_voltage
      t.float :celcius

      t.timestamps
    end
  end
end
