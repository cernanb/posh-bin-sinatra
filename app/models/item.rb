class Item < ActiveRecord::Base
    belongs_to :brand
    validates :name, :listing_price, :cost,  presence: true
end