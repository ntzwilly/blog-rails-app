class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def most_recent_posts(limit = 3)
    posts.last(limit)
  end
end