require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99,
        image: open_asset('apparel1.jpg')
      )
    end
  end
  
  scenario 'User can click image of the product and will go to that specific detail page' do
    visit root_path
    first('.product').click_link('Details')
    expect(page).to have_content('Leave Review for this product')
  end
end
