class Blog < ApplicationRecord
  validates :content, presence:true
end
