require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:example) { get users_path }

    it 'should provide correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'should provide correct template' do
      expect(response).to render_template(:index)
    end

    it 'should have correct placeholder text' do
      expect(response.body).to include('This is where goes all users')
    end
  end

  describe 'GET #show' do
    before(:example) { get user_path(1) }

    it 'should provide correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'should provide correct template' do
      expect(response).to render_template(:show)
    end

    it 'should have correct placeholder text' do
      expect(response.body).to include('This is where goes users bio and their posts')
    end
  end
end