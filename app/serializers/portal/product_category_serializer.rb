class Portal::ProductCategorySerializer < Jserializer::Base
  attributes :id, :description, :slug
  has_many :product_categories, serializer: ::Portal::ProductCategorySerializer
end
