class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  SPORT_TYPES = %w(basketball football volleyball ping-pong ski hiking kanu rackets treeclimbing)
  validates :offer_type, :name, :description, :address, :price, :offer_img, :sport_type, presence: true
  validates :description, length: { minimum: 20, message: "Description has to have at least 20 characters" }
  validates :offer_type, inclusion: { in: %w(equipment facility), message: "Please choose between 'equipment' or 'facility'." }
  validates :sport_type, inclusion: { in: SPORT_TYPES, message: "Please choose one from the list." }
  validates :price, length: { in: 1..100 }
  validates :price, numericality: { only_integer: true }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
