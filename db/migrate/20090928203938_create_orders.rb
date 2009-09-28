class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :bill_no
      t.integer :customer_id
      t.float :discount
      t.float :tax
      t.float :total_amount

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
