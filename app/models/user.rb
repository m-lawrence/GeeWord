class User < ApplicationRecord
    has_many :stories
    has_many :contributions

    validates :username, uniqueness: true
    validates :password, presence: true

    has_secure_password

end
