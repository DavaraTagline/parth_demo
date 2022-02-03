class City < ApplicationRecord
  belongs_to :state
  validates :city_name, presence: true
end
