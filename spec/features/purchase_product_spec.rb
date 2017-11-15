require "rails_helper"
require "pry"

describe "purchase product", js: true do
  it "purchases a product" do
    visit 'products/new'
    fill_in 'Name', with: 't-shirt'
    fill_in 'Price', with: '8'
    fill_in 'Quantity', with: '10'
    click_button 'Create'
    expect(page).to have_content 'successfully'

    visit '/purchases/new'
    select 't-shirt', from: 'purchase[product_id]'
    fill_in 'Quantity', with: '3'
    click_button 'Purchase'
    expect(page).to have_content 'successfully'
   end
end
