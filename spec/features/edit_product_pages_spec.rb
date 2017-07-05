require "rails_helper"

describe 'the edit a product process' do
  it 'edits a product' do
    coffee = Product.create(:name => 'Cool Covfefe', :cost => 14.95, :origin => 'Kirundo, Burundi', :notes => 'citrus, bright, fruity')
    visit product_path(coffee)
    click_link 'edit coffee'
    fill_in 'Name', :with => 'Coolest Covfefe'
    click_on 'Update Product'
    click_link 'all coffees'
    expect(page).to have_content 'Coolest Covfefe'
  end
end
