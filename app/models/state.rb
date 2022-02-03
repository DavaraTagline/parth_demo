class State < ApplicationRecord
    has_many :cities
    validates :state_name, presence: true
end
