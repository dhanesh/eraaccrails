class CreateProductLists < ActiveRecord::Migration
  def self.up
    create_table :product_lists do |t|
      t.string :name
      t.integer :product_id
      t.integer :brand_id
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :product_lists
  end
end
