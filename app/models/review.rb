class Review < ActiveRecord::Base
  validates(:author, :presence => true)

  belongs_to :product
end
