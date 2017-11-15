require "rails_helper"

describe "create product", type: :feature do
  it "creates a product" do
    visit '/products/new'
    fill_in 'Name', with: 't-shirt'
    fill_in 'Price', with: '8.99'
    fill_in 'Quantity', with: '10'
    click_button 'Create'
    expect(page).to have_content 'successfully'
  end
end
