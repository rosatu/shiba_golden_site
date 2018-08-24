class Writer < ApplicationRecord
  has_many :story_writers
  has_many :stories, through: :story_writers
  validates :pen_name, presence: true, uniqueness: true
  validates :pen_name, presence: true
  has_secure_password
end
