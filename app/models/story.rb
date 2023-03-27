class Story < ApplicationRecord
  belongs_to :user
  has_many :favorites, through: :users
  # has_many :favorited_by, through: :favorites, source: :user
end
