require 'rails_helper'

RSpec.describe User, type: :model do
    before :each do
      @user = User.new(
        first_name: "daniel",
        last_name: "yoo",
        E_mail: "b@b",
        password: "1234567",
        password_confirmation: "1234567"
      )
      @user.save
      @user1 = User.new(
        first_name: "daniel",
        last_name: "yoo",
        E_mail: "B@B",
        password: "1234567",
        password_confirmation: "1234567"
      )
    end

    describe 'Validations' do
      it 'should have firstname' do
        @user.first_name = nil
        expect(@user).to_not be_valid
      end
    
      it 'should have lastname' do
        @user.last_name = nil
        expect(@user).to_not be_valid
      end
      
      it 'should have email' do
        @user.E_mail = nil
        expect(@user).to_not be_valid
      end

      it 'should not have same e-mail' do
        expect(@user1).to_not be_valid
      end
    
      it 'should have at least 6characters for password' do
        @user.password = "1"
        @user.password_confirmation = "1"
        expect(@user).to_not be_valid
      end
    end
end
