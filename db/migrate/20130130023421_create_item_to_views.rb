class CreateItemToViews < ActiveRecord::Migration
  def change
    create_table :item_to_views do |t|
      t.string :title
      t.integer :poi_id
      t.integer :compass_heading
      t.integer :altitude
      t.string :body

      t.timestamps
    end
  end
end
