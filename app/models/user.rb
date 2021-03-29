class User < ApplicationRecord
    has_many :stories
    has_many :contributions

    # has_secure_password

end
