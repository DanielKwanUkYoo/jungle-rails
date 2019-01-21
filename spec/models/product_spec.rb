require 'rails_helper'

RSpec.describe Product, type: :model do
    before :each do 
        @category = Category.new(name: "test_category")
        @product = Product.new(
            name: "test_product",
            description: "test_description",
            image: "none",
            price_cents: 100,
            category_id: @category.id
        )
    end
    
    describe 'Validations' do
        it 'should have name' do
            @product.name = nil
            expect(@product).to_not be_valid
        end

        it 'should have price' do
            @product.price_cents = nil
            expect(@product).to_not be_valid
        end
    end

end