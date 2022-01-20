module ApplicationHelper
  def get_photo(user)
    user.photo.present? ? user.photo : 'https://ui-avatars.com/api/?name=ruby&background=random'
  end
end
