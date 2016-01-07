class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :amount
      t.references :user, donate: true, foreign_key: true
      t.references :charity, donate: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :donations, [:user_id, :created_at]
  end
end
