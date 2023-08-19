class CreateTransactionRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_records do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.string :transaction_name, null: false
      t.float :amount, null: false
      

      t.timestamps
    end
  end
end
