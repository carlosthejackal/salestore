class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :telephone

      t.timestamps null: false
    end
  end
end
