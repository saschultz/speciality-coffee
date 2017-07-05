class Review < ActiveRecord::Base
  validates(:author, :rating, :presence => true)
  validates(:content_body, {length: { in: 50..250 }, :presence => true})
  validates_numericality_of(:rating, {greater_than_or_equal_to: 1})

  belongs_to :product

end
