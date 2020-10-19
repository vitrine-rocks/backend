class Portal::ProductSerializer < Jserializer::Base
  attributes :id, :title, :code, :slug, :showcase_image_url
end
