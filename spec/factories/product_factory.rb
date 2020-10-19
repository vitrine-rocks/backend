FactoryBot.define do
  factory :product do
    title { 'title' }
    code { 'code' }
    description { 'description' }
    slug { 'description' }
    exhibition_order { 1 }

    product_category
  end

  factory :showcase, parent: :product do
    showcase { true }
    showcase_exhibition_order { 1 }
  end
end
