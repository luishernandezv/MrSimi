class Item < ActiveRecord::Base
  belongs_to :Medicine
  belongs_to :PriceList

  attr_accessible :price
end
