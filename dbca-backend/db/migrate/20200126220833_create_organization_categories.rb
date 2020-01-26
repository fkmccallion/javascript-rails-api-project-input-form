class CreateOrganizationCategories < ActiveRecord::Migration
  def change
    create_table :organization_categories do |t|
      t.references :organization, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.text :subCategory

      t.timestamps null: false
    end
  end
end
