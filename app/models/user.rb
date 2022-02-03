class User < ApplicationRecord
    validates :username, presence: true
    validates :gender, presence: true
    validates :email, presence: true
    validates :hobby, presence: true
end
