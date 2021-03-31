class User < ApplicationRecord
    has_many :stories
    has_many :contributions

    validates :username, uniqueness: true
    validates :password, presence: true
    validates :location, presence: true

    has_secure_password

end
