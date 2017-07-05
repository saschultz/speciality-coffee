class Review < ActiveRecord::Base
  validates(:author, :presence => true)
  validates(:content_body, {length: { in: 50..250 }, :presence => true})
  validates(:rating, {inclusion: { in: 1..5 }, :presence => true})

  belongs_to :product

end
