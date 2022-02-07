class City < ApplicationRecord
  belongs_to :state
  has_many :users
  validates :name, presence: true
end
