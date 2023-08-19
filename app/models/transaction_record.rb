class TransactionRecord < ActiveRecord::Base
  belongs_to :user
  belongs_to :tag

  validates :transaction_name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
