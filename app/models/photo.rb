class Photo < ActiveRecord::Base
  validates :source, :caption, presence: true
  validates :caption, length: { maximum: 140 }

  def user
    return User.find(user_id)
  end

end
