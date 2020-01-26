class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.text :name
      t.text :description
      t.text :address1
      t.text :address2
      t.text :city
      t.text :state
      t.integer :zip
      t.text :phone
      t.text :email
      t.text :website
      t.text :image
      t.integer :rank
      t.references :user, index: true, foreign_key: true
      t.references :hour, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
