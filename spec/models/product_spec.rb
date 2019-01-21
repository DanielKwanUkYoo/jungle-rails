require 'rails_helper'

RSpec.describe Product, type: :model do
    before :each do 
        @category = Category.new(id: 1, name: "test_category")
        @product = Product.new(
            name: "test_product",
            quantity: 3,
            price_cents: 100,
            category_id: @category.id
        )
    end
    
    describe 'Validations' do
        it 'should be valid with all valid attr' do
            expect(@product).to be_valid
        end
        
        it 'should have name' do
            @product.name = nil
            expect(@product).to_not be_valid
        end

        it 'should have price' do
            @product.price_cents = nil
            expect(@product).to_not be_valid
        end

        it 'should have quantity' do
            @product.quantity = nil
            expect(@product).to_not be_valid
        end

        it 'should have category_id' do
            @product.category_id = nil
            expect(@product).to_not be_valid
        end
    end

end