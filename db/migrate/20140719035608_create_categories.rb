class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.integer :kitten_id
    end
  end
end
