require 'rails_helper'

describe 'the destroy product process' do
  it 'deletes a product from the database' do
    coffee = Product.create(:name => 'Cool Covfefe', :cost => 14.95, :origin => 'Kirundo, Burundi', :notes => 'citrus, bright, fruity')
    visit product_path(coffee)
    click_on 'delete coffee'
    click_link 'all coffees'
    expect(page).not_to have_content('Cool Covfefe')
  end
end
