require "google/cloud/translate"
require "google/cloud/storage"

class Story < ApplicationRecord
  has_many :story_writers
  has_many :writers, through: :story_writers
  has_many :story_languages
  has_many :languages, through: :story_languages
  validates :title, presence: true
  validates :daimei, presence: true
end
