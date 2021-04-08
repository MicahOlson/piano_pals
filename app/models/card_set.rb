class CardSet < ApplicationRecord
  belongs_to :user
  validates :set, :presence => true
  validates :set_name, :presence => true
end
