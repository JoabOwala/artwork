class User < ApplicationRecord
    has_secure_password
    has_many :arts 

    validates :username, presence: true, uniqueness: true
end
