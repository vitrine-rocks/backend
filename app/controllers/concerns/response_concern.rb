module ResponseConcern
  def render_json(resource, options = {})
    if options.key?(:serializer)
      serializer = options.delete(:serializer)
    elsif options.key?(:each_serializer)
      serializer = options.delete(:each_serializer)
      options[:is_collection] = true
    end

    options[:root] = resource.model_name.route_key if options.key?(:root)

    options[:json] = if serializer
                       serializer.new(resource, options)
                     else
                       resource
                     end
    render options
  end
end
