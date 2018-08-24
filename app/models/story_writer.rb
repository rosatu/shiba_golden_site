class StoryWriter < ApplicationRecord
  belongs_to :writer
  belongs_to :story
end
