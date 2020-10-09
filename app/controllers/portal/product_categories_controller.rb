class Portal::ProductCategoriesController < ApplicationController
  include ResponseConcern

  def index
    product_categories = ProductCategory
                         .where(product_category: nil)
                         .order(:exhibition_order)
    render_json(product_categories,
                each_serializer: ::Portal::ProductCategorySerializer,
                root: true)
  end
end
