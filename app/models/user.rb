class User < ApplicationRecord
  has_many :card_sets
  validates :username,
  presence: true,
  uniqueness: {case_sensitive: false}

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false}

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end