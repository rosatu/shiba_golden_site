class Writer < ApplicationRecord
  has_many :story_writers
  has_many :stories, through: :story_writers
<<<<<<< HEAD
  validates :pen_name, presence: true, uniqueness: true
=======
  validates :pen_name, presence: true
>>>>>>> natsuki
  has_secure_password
end
