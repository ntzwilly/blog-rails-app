class Post < ApplicationRecord

  validates :title, presence: true, 
                    length: { maximum: 250, too_long: 'Title length must not exceed 250 characters' }
  validates :comments_counter, :likes_counter, numericality: { greater_than_or_equal_to: 0 }

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
