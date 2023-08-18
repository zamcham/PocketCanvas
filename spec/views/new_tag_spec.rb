require 'rails_helper'

RSpec.describe 'tags/new', type: :view do
  let(:user) { User.create(name: 'Test User', email: 'test@example.com', password: 'password') }

  before do
    assign(:tag, Tag.new)
    allow(view).to receive(:current_user).and_return(user)
    render
  end

  it 'renders the form' do
    expect(rendered).to have_selector('form[action="/tags"]')
    expect(rendered).to have_selector('form[method="post"]')
  end

  it 'renders the name text field' do
    expect(rendered).to have_selector('input[name="tag[name]"][required]')
  end

  it 'renders the submit button' do
    expect(rendered).to have_selector('input[type="submit"][value="Create Category"]')
  end
end
