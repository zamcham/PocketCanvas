require 'rails_helper'

RSpec.describe TransactionRecord, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      user = User.create(name: 'Test', email: "test@example.com", password: "password")
      tag = user.tags.create(name: "Groceries")
      transaction_record = user.transaction_records.create(tag: tag, transaction_name: "Grocery shopping", amount: 50.00)

      expect(transaction_record).to be_valid
    end
  end
end
