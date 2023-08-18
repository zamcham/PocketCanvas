require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  render_views

  describe 'GET #index' do
    context 'when user is not authenticated' do
      it 'renders the welcome message and sign-up/login buttons' do
        get :index

        expect(response).to have_http_status(:ok)
        expect(response.body).to include('Welcome to PocketCanvas')
        expect(response.body).to include('This is your versatile financial companion')
        expect(response.body).to include('Login')
        expect(response.body).to include('Sign Up')
      end
    end

    context 'when user is authenticated' do
      user = User.create(name: 'Test User', email: 'test@test.com', password: 'password')
      before do
        sign_in(user)
      end

      it 'renders the PocketCanvas message and add new category button' do
        get :index

        expect(response).to have_http_status(:ok)
        expect(response.body).to include('PocketCanvas')
      end
    end
  end
end
