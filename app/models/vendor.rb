class Vendor < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :phone
end
