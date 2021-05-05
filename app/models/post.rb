class Post < ApplicationRecord
  validates :title, {presence: true, length: {maximum: 70}}
  validates :content, {presence: true, length: {maximum: 140}}
  validates :article1, {presence: true}
  validates :user_id, {presence: true}
  
  def user
    return User.find_by(id: self.user_id)
  end
  
end
