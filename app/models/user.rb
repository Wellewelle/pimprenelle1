class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :stories, through: :favorites
  # has_many :favorited_stories, through: :favorites, source: :story
  # validates
  # validates
  # validates
end
