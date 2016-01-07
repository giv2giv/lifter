class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :amount
      t.references :user, index: true, foreign_key: true
      t.references :charity, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :donations, [:user_id, :created_at]
  end
end
