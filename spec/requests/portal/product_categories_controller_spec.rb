require 'rails_helper'

RSpec.describe 'portal/product_categories', type: :request do
  let!(:product_category) { create(:product_category) }

  it 'lists all product_categories' do
    get portal_product_categories_path

    expect(response).to have_http_status(200)
    expect(response.body).to include_json(
      product_categories: [{ id: product_category.id,
                             description: product_category.description,
                             slug: product_category.slug,
                             product_categories: [] }]
    )
  end
end
