class AddTourToPoi < ActiveRecord::Migration
  def change
    add_column :pois, :tour_id, :integer
  end
end
