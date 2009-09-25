class Product < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name, :category_id
  belongs_to :category
end
