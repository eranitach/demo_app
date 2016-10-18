class Micropost < ActiveRecord::Base
  belongs_to :user
  
  validates :content, length: { maximum: 40 }
  validates :user_id, numericality: { only_integer: true }
end
