module ProductsHelper
    
    # Returns the Gravatar for the given product.
  def gravatar_for(product, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(product.name)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: product.name, class: "gravatar")
  end
  
end
