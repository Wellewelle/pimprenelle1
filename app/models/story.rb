class Story < ApplicationRecord
  belongs_to :user
  has_many :favorites, through: :users
  # has_many :favorited_by, through: :favorites, source: :user
  # validates :tags, inclusion: {in: []}
  # validates :age
  # validates :rating
  has_one_attached :photo
  has_one_attached :audio

  include PgSearch::Model
  pg_search_scope :search_by_title_and_tags,
    against: [ :title, :tags ],
    using: {
      tsearch: { prefix: true }
    }

  validates :title, presence: true, uniqueness: true
  validates :summary, presence: true, uniqueness: true
  validates :content, presence: true, uniqueness: true
end
