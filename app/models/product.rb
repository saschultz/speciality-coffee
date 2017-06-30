class Product < ActiveRecord::Base
  scope :three_most_recent, -> { order(created_at: :desc).limit(3) }

  validates(:name, :cost, :origin, :notes, :presence => true)

  has_many :reviews
end
