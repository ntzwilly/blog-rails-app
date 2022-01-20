class Post < ApplicationRecord
  belongs_to :user, counter_cache: :posts_counter
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def most_recent_comments
    comments.last(5)
  end

  def liked?(user_id)
    likes.exists?(user_id: user_id)
  end

  def update_posts_counter(value)
    user.update('posts_counter', value)
  end
end
