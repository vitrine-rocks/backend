# frozen_string_literal: true

class ProductCategory < ApplicationRecord
  has_many :product_categories, class_name: 'ProductCategory', inverse_of: :product_category,
                                dependent: :destroy
  belongs_to :product_category, class_name: 'ProductCategory', inverse_of: :product_categories,
                                optional: true
  has_many :products, inverse_of: :product_category, dependent: :destroy
end
