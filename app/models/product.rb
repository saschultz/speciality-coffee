class Product < ActiveRecord::Base
  validates(:name, :cost, :origin, :notes, :presence => true)
  has_many :reviews
end
