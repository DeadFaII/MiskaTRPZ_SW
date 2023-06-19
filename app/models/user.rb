class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :playlists
  

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :nickname, presence: true
  validates :birthday, presence: true
  validates :isArtist, inclusion: { in: [true, false] }
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true

end
