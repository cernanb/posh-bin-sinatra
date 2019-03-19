class Brand < ActiveRecord::Base
    has_many :items

    has_many :user_brands
    has_many :users, through: :user_brands
end