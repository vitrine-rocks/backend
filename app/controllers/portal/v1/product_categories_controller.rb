class Portal::V1::ProductCategoriesController < ApplicationController
  include ResponseConcern

  def index
    product_categories = ProductCategory.all.where(product_category: nil).order(:exhibition_order)
    render_json(product_categories, each_serializer: ProductCategorySerializer, root: true)
  end
end
