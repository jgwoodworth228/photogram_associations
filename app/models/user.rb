class User < ActiveRecord::Base
  def posts
    return Photo.where(user_id: id)
  end
end
