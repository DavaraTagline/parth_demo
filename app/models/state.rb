class State < ApplicationRecord
    has_many :cities
    has_many :users
    validates :name, presence: true
end
