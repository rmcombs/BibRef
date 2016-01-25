class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :user
      t.text :quote
      t.text :notes
      t.integer :modern_reference
      t.integer :biblical_reference

      t.timestamps null: false
    end
  end
end
