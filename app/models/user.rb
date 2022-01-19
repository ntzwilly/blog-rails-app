class User < ApplicationRecord
  has_many :posts, dependent: :destroy 
  has_many :comments, dependent: :destroy 
  has_many :likes, dependent: :destroy 

  def most_recent_posts
    posts.order('created_at Asc').limit(3)
  end
end
