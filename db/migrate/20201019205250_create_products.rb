class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :title, null: false
      t.string :code, null: false
      t.text :description, null: false
      t.string :slug, null: false
      t.string :keywords, null: true
      t.boolean :showcase, default: false
      t.integer :exhibition_order, null: true
      t.integer :showcase_exhibition_order, null: true
      t.uuid :product_category_id, index: true
      t.timestamps
    end
  
    add_foreign_key :products, :product_categories, column: :product_category_id, on_delete: :cascade
  end
end
