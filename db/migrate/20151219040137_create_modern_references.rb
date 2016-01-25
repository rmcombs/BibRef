class CreateModernReferences < ActiveRecord::Migration
  def change
    create_table :modern_references do |t|
      t.string :location
      t.text :text
      t.date :date

      t.timestamps null: false
    end
  end
end
