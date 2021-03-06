require 'rails_helper'

RSpec.describe Like, type: :model do
  describe '#update_counter' do
    let(:user) { User.create(name: 'Paul') }
    let(:post) { user.posts.create(title: 'Post', comments_counter: 0, likes_counter: 0) }

    it 'Should update the post likes counter' do
      post.likes.create(user: user)
      expect(post.likes_counter).to eq 1
    end
  end
end
