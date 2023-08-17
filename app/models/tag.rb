class Tag < ActiveRecord::Base
  belongs_to :user
  belongs_to :transaction_record
end
