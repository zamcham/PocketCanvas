class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 50
      t.string :photo, limit: 50, default: 'default.png'
      t.float :balance, null: false, default: 0.0

      t.timestamps
    end
  end
end
