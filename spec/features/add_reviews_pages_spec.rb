require "rails_helper"

describe 'the adding a review process' do
  it 'adds a review to a product' do
    coffee = Product.create(:name => 'Cool Covfefe', :cost => 14.95, :origin => 'Kirundo, Burundi', :notes => 'citrus, bright, fruity')
    visit product_path(coffee)
    click_link 'add review'
    fill_in 'Author', :with => 'Sway'
    fill_in 'Content body', :with => 'This was the coolest covfefe I have ever tweeted about.'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'Sway'
  end

  it 'gives an error if a field is left blank' do
    coffee = Product.create(:name => 'Cool Covfefe', :cost => 14.95, :origin => 'Kirundo, Burundi', :notes => 'citrus, bright, fruity')
    visit product_path(coffee)
    click_link 'add review'
    fill_in 'Author', :with => ''
    fill_in 'Content body', :with => 'This was the coolest covfefe I have ever tweeted about.'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end

  it 'gives an error if the rating field is greater than 5' do
    coffee = Product.create(:name => 'Cool Covfefe', :cost => 14.95, :origin => 'Kirundo, Burundi', :notes => 'citrus, bright, fruity')
    visit product_path(coffee)
    click_link 'add review'
    fill_in 'Author', :with => ''
    fill_in 'Content body', :with => 'This was the coolest covfefe I have ever tweeted about.'
    fill_in 'Rating', :with => 6
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
