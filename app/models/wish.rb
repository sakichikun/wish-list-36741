class Wish < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
