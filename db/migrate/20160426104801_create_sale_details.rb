class CreateSaleDetails < ActiveRecord::Migration
  def change
    create_table :sale_details do |t|
      t.integer :item_id
      t.integer :sale_id
      t.decimal :sale_price, precision: 8, scale: 2
      t.string :price_per_detail
      t.integer :sale_discount

      t.timestamps null: false
    end
  end
end
