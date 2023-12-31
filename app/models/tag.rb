class Tag < ActiveRecord::Base
  belongs_to :user
  has_many :transaction_records

  validates :name, presence: true
end
