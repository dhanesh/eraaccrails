class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.integer :vendor_id
      t.integer :product_list_id
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
