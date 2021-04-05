class Keynote < ApplicationRecord
  validates :mode, presence: true
  validates :keynote, presence: true
  validates :image, presence: true
  validates :audio, presence: true
end
