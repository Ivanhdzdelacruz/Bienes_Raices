class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.integer :rooms
      t.integer :bathromms
      t.float :construction
      t.float :ground
      t.integer :parking
      t.float :price
      t.integer :agent_id
      t.integer :property_type_id
      t.integer :property_category_id
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
