module ApplicationHelper
  def gravatar_url(user)
    if user.avatar.present?
      return user.avatar.url
    else
      return root_url + "images/No-image-available.jpg"
    end
 end
end
