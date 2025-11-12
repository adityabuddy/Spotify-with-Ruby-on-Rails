class Playlist < ApplicationRecord
  belongs_to :users
  has_many :tracks, through: :playlist_tracks
  validates :name, presence: true
end
