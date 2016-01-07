class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :category, donate: true, foreign_key: true
      t.references :charity, donate: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
