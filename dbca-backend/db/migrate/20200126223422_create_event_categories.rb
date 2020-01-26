class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.references :event, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.text :subCategory

      t.timestamps null: false
    end
  end
end
