class PriceList < ActiveRecord::Base
  belongs_to :branch

  attr_accessible :name
end
