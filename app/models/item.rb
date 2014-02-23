class Item < ActiveRecord::Base
  attr_accessible :name, :level, :product_id
  belongs_to :product
end
