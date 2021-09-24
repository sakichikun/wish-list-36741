class Wish < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true

  belongs_to :user
end
