class Want < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true
end
