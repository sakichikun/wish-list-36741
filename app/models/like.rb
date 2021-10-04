class Like < ApplicationRecord
  belongs_to :user
  belongs_to :wish

  def self.create_all_ranks
    Wish.find(Like.group(:wish_id).order('count(wish_id)desc').limit(3).pluck(:wish_id))
  end
end
