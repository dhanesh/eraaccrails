class ProductList < ActiveRecord::Base
  validates_presence_of :name, :product_id, :brand_id, :price
  validates_numericality_of :price
  has_many :products
end
