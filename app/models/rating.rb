class Rating < ActiveRecord::Base
    has_many :products
    has_many :users

    validates :user_id, presence: true
    validates :product_id, presence: true

end
