class User < ApplicationRecord
    has_many :stories
    has_many :contributions
end
