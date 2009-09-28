class Order < ActiveRecord::Base
  validates_presence_of :bill_no, :customer_id, :tax, :total_amount, :discount
  validates_numericality_of :tax, :discount, :total_amount
end
