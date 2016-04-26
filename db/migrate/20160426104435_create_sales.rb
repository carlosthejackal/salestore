class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :name
      t.string :description
      t.string :sale_image_url
      t.date :from_date
      t.date :to_date
      t.boolean :still_valid
      t.integer :supplier_id

      t.timestamps null: false
    end
  end
end
