class Item < ActiveRecord::Base
  attr_accessible :name, :level, :product, :level_id, :product_id 
  belongs_to :product
  belongs_to :level
end
