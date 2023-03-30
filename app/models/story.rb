class Story < ApplicationRecord
  belongs_to :user
  has_many :favorites, through: :users
  # has_many :favorited_by, through: :favorites, source: :user

  include PgSearch::Model
  pg_search_scope :search_by_title_and_tag,
    against: [ :title, :tag ],
    using: {
      tsearch: { prefix: true }
    }
end
