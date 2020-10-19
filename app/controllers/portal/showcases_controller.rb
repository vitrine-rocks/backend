class Portal::ShowcasesController < ApplicationController
  include ResponseConcern

  def index
    showcases = Product.showcase
    render_json(showcases,
                each_serializer: ::Portal::ProductSerializer,
                root: true)
  end
end
