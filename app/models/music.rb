class Music < ApplicationRecord

  has_one_attached :audio

  has_many :likes, dependent: :destroy
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :playlists

  validates :musicName, presence: true
  validates :musicDescription, presence: true
  validates :musicText, presence: true
  validates :publishDate, presence: true
  validates :isFree, inclusion: { in: [true, false] }

end
