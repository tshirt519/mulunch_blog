class User < ApplicationRecord
  has_secure_password
  validates :name, {presence: true, uniqueness: true}
  validates :email, {presence: true, uniqueness: true}
  has_one_attached :picture
  
  def post
    return Post.where(user_id: self.id)
  end
  
end
