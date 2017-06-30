Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Coffee.blend_name,
                            cost: Faker::Commerce.price,
                            origin: Faker::Coffee.origin,
                            notes: Faker::Coffee.notes)
    5.times do |index|
      product.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(100), rating: Faker::Number.between(1, 5), product_id: Faker::Number.between(1, 50))
    end
end

p "#{Product.count} products"
p "#{Review.count} reviews"
