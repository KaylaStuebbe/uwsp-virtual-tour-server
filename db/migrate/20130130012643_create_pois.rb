class CreatePois < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.string :title
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
