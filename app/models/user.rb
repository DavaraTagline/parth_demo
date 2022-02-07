class User < ApplicationRecord
    belongs_to :state
    belongs_to :city
    validates :username, presence: true
    validates :gender, presence: true
    validates :email, presence: true
    validates :hobby, presence: true
end
