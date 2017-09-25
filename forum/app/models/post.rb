class Post < ApplicationRecord
  belongs_to :group
  belongs_to :profile
  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true, length: { minimum: 5 }
end
