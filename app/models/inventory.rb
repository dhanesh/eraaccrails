class Inventory < ActiveRecord::Base
  validates_numericality_of :price, :quantity
  validates_presence_of :vendor_id, :product_list_id, :quantity, :price
  has_many :product_lists
end
