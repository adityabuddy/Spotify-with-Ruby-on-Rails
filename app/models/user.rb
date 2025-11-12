class User < ApplicationRecord
    has_many :playlists
    validates :username, presence: true, uniqueness: true
end
