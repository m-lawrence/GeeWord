class User < ApplicationRecord
    has_many :stories
    has_many :contributions

    validates :username, uniqueness: true
    validates :username, presence: true
    validates :username, length: {minimum: 4}
    validates :password, presence: true
    validates :password, length: {minimum: 4}
    validates :location, presence: true

    has_secure_password

end
