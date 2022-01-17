class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  after_save :update_posts_counter

  def most_recent_comments()
    comments.last(5)
  end

  private

  def update_posts_counter(value)
    user.update('posts_counter', value)
  end
end
