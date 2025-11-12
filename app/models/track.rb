class Track < ApplicationRecord
    belongs_to :artist
    belongs_to :album
    has_many :playlists, through: :playlist_tracks
    validates :title, presence: true
end
