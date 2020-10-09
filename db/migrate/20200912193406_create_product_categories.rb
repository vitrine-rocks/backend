# frozen_string_literal: true

class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories, id: :uuid do |t|
      t.string :description, null: false
      t.uuid :product_category_id, index: true
      t.integer :exhibition_order, null: false
      t.string :slug, null: false
      t.timestamps
    end

    add_foreign_key :product_categories, :product_categories, column: :product_category_id, on_delete: :cascade
  end
end
