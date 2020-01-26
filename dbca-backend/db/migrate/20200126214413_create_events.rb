class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.text :phone
      t.text :email
      t.text :url
      t.text :image
      t.date :start
      t.date :end
      t.references :organization, index: true, foreign_key: true
      t.references :hour, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
