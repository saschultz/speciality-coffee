class Review < ActiveRecord::Base
  validates(:author, :content_body, :rating, :presence => true)

  belongs_to :product

  before_save(:validate_length)

  def validate_length
    validates_length_of(:content_body, :minimum => 50, :maximum => 250)
  end
end
