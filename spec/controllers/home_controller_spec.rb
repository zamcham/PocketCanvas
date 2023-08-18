require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do      
    context 'when user is authenticated' do
      it 'renders the index template' do
        user = User.create(name: 'Test User', email: 'test@example.com', password: 'password')
        allow(controller).to receive(:current_user).and_return(user)

        get :index

        expect(response).to render_template(:index)
      end
    end
  end
end
