class Like < ApplicationRecord
  validates :user_id, {presence: true}
  validates :post_id, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
    
  def posts
    return Post.where(user_id: self.id)
  end
  
end
