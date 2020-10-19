class Product < ApplicationRecord
  belongs_to :product_category, class_name: 'ProductCategory', inverse_of: :products

  scope :showcase, -> { where(showcase: true).order(:showcase_exhibition_order) }
end
