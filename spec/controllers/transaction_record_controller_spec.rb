require 'rails_helper'

RSpec.describe TransactionRecordsController, type: :controller do
  let(:user) { User.create(name: 'Test User', email: 'test@example.com', password: 'password') }
  let(:tag) { user.tags.create(name: 'Test Tag', icon: 'test-icon', user_id: user.id) }
  let(:transaction_record) do
    user.transaction_records.create(transaction_name: 'Bj', amount: 45.5, user: user, tag: tag)
  end

  describe 'GET #index' do
    it 'assigns all transaction records' do
      user.transaction_records.create(transaction_name: 'Bj', amount: 45.5, user: user, tag: tag)
      expect(TransactionRecord.count).to eq(1)
    end

    it 'assigns transaction records for a specific tag' do
      transaction_record = user.transaction_records.create(transaction_name: 'Bj', amount: 45.5, user: user, tag: tag)
      expect(tag.transaction_records).to include(transaction_record)
    end
  end
end
