class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :reservations
  validates :property_type, presence: { message: " is required" }
  validates :property_address, presence: { message: " is required" }
  validates :property_price_per_night, presence: { message: " is required" }
  validates :max_people, presence: { message: " is required" }

end