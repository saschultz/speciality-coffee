class Review < ActiveRecord::Base
  validates(:author, :content_body, :rating, :presence => true)
  validates_length_of(:content_body, :minimum => 50, :maximum => 250)

  belongs_to :product
end
