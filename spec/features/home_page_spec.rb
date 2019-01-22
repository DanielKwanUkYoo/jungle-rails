require 'rails_helper'

RSpec.feature "HomePages", type: :feature do
  
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
  
  
  scenario 'Visiting homepage to see all products' do
    visit root_path

    save_screenshot('test.png')
    expect(page).to have_css 'article.product', count: 10
  end
end
