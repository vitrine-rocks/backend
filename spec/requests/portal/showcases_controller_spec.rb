require 'rails_helper'

RSpec.describe 'portal/showcases', type: :request do
  let!(:showcase) { create(:showcase) }
  let!(:ordinary_product) { create(:product) }

  it 'lists only products marked as showcase' do
    get portal_showcases_path

    expect(response.body).to include_json(products: [{ id: showcase.id,
                                                       title: showcase.title }])
    expect(JSON.parse(response.body)['products'].count).to eq 1
  end
end
