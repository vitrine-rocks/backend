class CreateProductImages < ActiveRecord::Migration[6.0]
  def change
    create_table :product_images, id: :uuid do |t|
      t.string :url, null: false
      t.boolean :showcase, default: false
      t.uuid :product_id, index: true
      t.timestamps
    end
  
    add_foreign_key :product_images, :products, column: :product_id, on_delete: :cascade
  end
end
