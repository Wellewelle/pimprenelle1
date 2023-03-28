class Story < ApplicationRecord
  belongs_to :user
  has_many :favorites, through: :users
  # has_many :favorited_by, through: :favorites, source: :user
  validates :title, presence: true, uniqueness: true
  validates :summary, presence: true, uniqueness: true
  validates :content, presence: true, uniqueness: true
end
