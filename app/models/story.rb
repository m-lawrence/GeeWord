class Story < ApplicationRecord
    belongs_to :user
    has_many :contributions, dependent: :destroy_async

    validates :title, presence: true
    validates :content, presence: true
    validates :content, length: {maximum: 200}

end
