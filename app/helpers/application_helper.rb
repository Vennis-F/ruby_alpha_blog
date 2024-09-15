module ApplicationHelper
  def gavatar_for(user, options = { size: 80 })
    email_address = user.email.downcase
    hash = Digest::SHA256.hexdigest(email_address)
    default = "https://www.example.com/default.jpg"
    size = options[:size]
    params = URI.encode_www_form("d" => default, "s" => size)
    image_src = "https://www.gravatar.com/avatar/#{hash}?#{params}"
    image_tag(image_src, alt: user.username)
  end
end
