class CreatePropertyPhotos < ActiveRecord::Migration
  def change
    create_table :property_photos do |t|
      t.string :source
      t.string :caption
      t.integer :property_id

      t.timestamps null: false
    end
  end
end
