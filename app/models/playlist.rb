class Playlist < ApplicationRecord

  has_and_belongs_to_many :music
  #belongs_to :user

  validates :playlistName, presence: true
  validates :playlistDescription, presence: true
  validates :creationDate, presence: true
  validates :isPublic, inclusion: { in: [true, false] }
  
end
