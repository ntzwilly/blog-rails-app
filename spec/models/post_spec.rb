require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.create(name: 'Willy') }
  let(:post) do
    described_class.create(user: user, title: 'My post', text: 'hello world', comments_counter: 0, likes_counter: 0)
  end
  describe 'validations' do
    describe 'title' do
      context 'when valid' do
        it { expect(post).to be_valid }
      end

      context 'when invalid' do
        subject { described_class.new }
        it 'should be present' do
          expect(subject).to_not be_valid
        end

        it 'should not be too long' do
          subject.title = 'My post' * 30
          expect(subject).to_not be_valid
        end
      end
    end

    describe 'comments_counter' do
      it 'Should allow valid values' do
        subject.comments_counter = 0.30
        expect(subject).to_not be_valid
      end

      it 'should allow valid values' do
        subject.comments_counter = 0
        expect(subject).to_not be_valid
      end

      it 'should allow positive values' do
        subject.comments_counter = -1
        expect(subject).to_not be_valid
      end
    end

    describe '#most_recent_comments' do
      before { 6.times { |i| post.comments.create(text: "text#{i}") } }

      it 'should show the 5 last comments' do
        expect(post.most_recent_comments).to eq(post.comments.last(5))
      end
    end
  end
end
