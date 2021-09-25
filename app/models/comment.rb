class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :wish

  validates :text, presence: true
end
