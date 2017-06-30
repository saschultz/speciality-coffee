class Product < ActiveRecord::Base
  validates(:name, :cost, :presence => true)
end
