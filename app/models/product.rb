class Product < ActiveRecord::Base
  validates(:name, :cost, :origin, :notes, :presence => true)
end
