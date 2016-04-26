class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|
      t.string :image_url
      t.string :description
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
