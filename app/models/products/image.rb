class Products::Image < ApplicationRecord
  belongs_to :product, class_name: 'Product', inverse_of: :images
end
