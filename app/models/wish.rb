class Wish < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def self.search(search)
    if search != ""
      Wish.where('title LIKE(?)', "%#{search}%")
    else
      Wish.all
    end
  end
end