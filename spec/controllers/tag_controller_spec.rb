require 'rails_helper'

RSpec.describe TagsController, type: :controller do
  describe 'POST #create' do
    let(:user) { User.create(name: 'Test User', email: 'test@example.com', password: 'password') }

    context 'with valid params' do
      let(:valid_params) do
        { tag: { name: 'Test Tag', icon: 'test-icon', user_id: user.id } }
      end

      it 'creates a new tag' do
        expect do
          post :create, params: valid_params
        end.to change(Tag, :count).by(3)
      end

      it 'redirects to the root path' do
        post :create, params: valid_params
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
