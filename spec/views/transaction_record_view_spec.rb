require 'rails_helper'

RSpec.describe 'transaction_records/index', type: :view do
  let(:user) { User.create(name: 'Test User', email: 'test@example.com', password: 'password') }
  let(:tag) { user.tags.create(name: 'Test Tag', icon: 'test-icon', user_id: user.id) }
  let(:transaction_record) { user.transaction_records.create(transaction_name: 'Bj', amount: 45.5, user: user, tag: tag)}

  before do
    assign(:tag, tag)
    assign(:transaction_records, [])
    allow(view).to receive(:current_user).and_return(user)
    render
  end

  context 'when there are no transactions' do
    it 'displays the "No transactions yet" message' do
      expect(rendered).to have_content('No transactions yet')
    end
  end

  it 'displays the "Add New Transaction" button' do
    expect(rendered).to have_link('Add New Transaction', href: new_tag_transaction_record_path(tag.id))
  end
end