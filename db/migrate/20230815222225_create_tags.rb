class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.references :user, null: false, foreign_key: true
      t.references :transaction_record, null: false, foreign_key: true
      t.string :name, null: false
      t.string :icon, null: false, default: 'fas fa-tag'      

      t.timestamps
    end
  end
end
