class Blog < ApplicationRecord
  validates :content, presence:true
  mount_uploader :image
  belongs_to :user
end
