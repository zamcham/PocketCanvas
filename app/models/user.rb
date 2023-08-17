class User < ActiveRecord::Base
  has_many :transaction_records
  has_many :tags
end
