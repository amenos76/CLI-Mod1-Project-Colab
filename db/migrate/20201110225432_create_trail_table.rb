class CreateTrailTable < ActiveRecord::Migration[6.0]
  def change
      create_table :trails do |t|
        t.string :name
        t.string :location
        t.text :description
        t.string :difficulty
      end
    end
  end
  