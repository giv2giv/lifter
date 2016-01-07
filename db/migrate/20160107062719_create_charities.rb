class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps null: false
    end
  end
end
