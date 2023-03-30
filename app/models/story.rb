class Story < ApplicationRecord
  belongs_to :user
  has_many :favorites, through: :users
  # has_many :favorited_by, through: :favorites, source: :user
  validates :title, presence: true
  validates :summary, presence: true
  validates :content, presence: true
  # validates :tag, inclusion: {in: []}
  # validates :age
  # validates :rating
  has_one_attached :audio
end
