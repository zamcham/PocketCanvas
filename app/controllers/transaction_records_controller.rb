class TransactionRecordsController < ApplicationController
  def index
    @transaction_records = TransactionRecord.all
  end

  def show
  end

  def new
  end
end
