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

  it 'gives errors when the form is not fully completed' do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
