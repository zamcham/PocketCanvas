class TransactionRecordsController < ApplicationController
  def index
    if params[:tag_id]
      @tag = Tag.find(params[:tag_id])
      @transaction_records = @tag.transaction_records
    else
      @transaction_records = TransactionRecord.all
    end
  end

  def show
  end

  def new
    @transaction_record = TransactionRecord.new
  end

  def create
    @transaction_record = TransactionRecord.new(transaction_record_params)
    if @transaction_record.save
      redirect_to tag_transaction_records_path
    else
      render :new
    end
  end

  def destroy
    @transaction_record = TransactionRecord.find(params[:id])

    if @transaction_record.destroy
      redirect_to tag_transaction_records_path, notice: 'Transaction was successfully deleted.'
    else
      flash[:alert] = 'Failed to delete transaction.'
      render :index
    end
  end

  def totalAmount
    @total_amount = TransactionRecord.sum(:amount)
  end

  private

  def transaction_record_params
    params.require(:transaction_record).permit(:tag_id, :transaction_name, :amount, :user_id)
  end
end
