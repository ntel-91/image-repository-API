class User < ApplicationRecord
    has_many :items

    validates :username, uniqueness: true
    has_secure_password
end
