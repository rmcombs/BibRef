class CreateBiblicalReferences < ActiveRecord::Migration
  def change
    create_table :biblical_references do |t|
      t.string :location
      t.text :text

      t.timestamps null: false
    end
  end
end
