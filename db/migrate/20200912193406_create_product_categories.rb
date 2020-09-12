class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories, id: :uuid do |t|
      t.string :description
      t.uuid :parent_product_category_id, index: true
      t.timestamps
    end

    add_foreign_key :product_categories, :product_categories, column: :parent_product_category_id, on_delete: :cascade
  end
end
