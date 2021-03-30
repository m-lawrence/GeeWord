class Story < ApplicationRecord
    belongs_to :user
    has_many :contributions

    validates :title, presence: true
    validates :content, presence: true
    validates :content, length: {maximum: 200}

end
