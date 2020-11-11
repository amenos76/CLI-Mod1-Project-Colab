class IntegerToFloatTrailTime < ActiveRecord::Migration[6.0]
  def change 
    change_column :trails, :length_time, :float
  end
end
