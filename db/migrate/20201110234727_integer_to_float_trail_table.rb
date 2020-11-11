class IntegerToFloatTrailTable < ActiveRecord::Migration[6.0]
  def change 
    change_column :trails, :length_distance, :float
  end
end
