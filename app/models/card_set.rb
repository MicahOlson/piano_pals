class CardSet < ApplicationRecord
  belongs_to :user
  validates :card_set, :presence => true
end
