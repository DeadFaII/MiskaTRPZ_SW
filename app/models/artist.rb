class Artist < ApplicationRecord

  has_many :musics

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :nickname, presence: true
  validates :birthday, presence: true
  
end
