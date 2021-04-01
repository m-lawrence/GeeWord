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

    def self.most_stories
        # story_count = User.all.each { |user| user.stories.count }
        # user_story_counts = story_count.sort.reverse
        story_count = 0
        most_prolific = []
        User.all.each do |user|
        if user.stories.count > story_count
            story_count = user.stories.count
            most_prolific << user
        end
        end
        most_prolific.last.username
    end

end
