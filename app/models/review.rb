class Review < ActiveRecord::Base
  validates(:author, :content_body, :presence => true)

  belongs_to :product
end
