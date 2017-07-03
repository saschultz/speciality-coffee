class Product < ActiveRecord::Base
  scope :three_most_recent, -> { order(created_at: :desc).limit(3) }

  scope :most_reviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
      .joins(:reviews)
      .group("products.id")
      .order("reviews_count DESC")
      .limit(1)
    )}

  scope :local, -> { where('origin LIKE ?', '%, USA' )}  

  validates(:name, :cost, :origin, :notes, :presence => true)

  has_many :reviews
end
