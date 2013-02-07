class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.string :location
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
