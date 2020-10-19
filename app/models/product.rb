class Product < ApplicationRecord
  belongs_to :product_category, class_name: 'ProductCategory', inverse_of: :products
  has_many :images, class_name: 'Products::Image', inverse_of: :product, dependent: :destroy

  scope :showcase, -> { where(showcase: true).order(:showcase_exhibition_order) }

  def showcase_image_url
    images.where(showcase: true).first&.url
  end
end
