require "rails_helper"

describe 'the adding a product process' do
  it 'adds a product to the database' do
    visit products_path
    click_link 'admin'
    fill_in 'Name', :with => 'Cool Covfefe'
    fill_in 'Cost', :with => 14.95
    fill_in 'Origin', :with => 'Kiruno, Burundi'
    fill_in 'Notes', :with => 'citrus, bright, floral'
    click_on 'Create Product'
    click_link 'all coffees'
    expect(page).to have_content 'Cool Covfefe'
  end
end

# coffee = Product.create(:name => 'Cool Covfefe', :cost => 14.95, :origin => 'Kirundo, Burundi', :notes => 'citrus, bright, floral')
