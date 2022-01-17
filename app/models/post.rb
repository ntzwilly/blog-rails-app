class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user

  def update_posts_counter(value)
    user.update('posts_counter', value)
  end

  def most_recent_comments()
    comments.last(5)
  end
end
