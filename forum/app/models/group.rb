class Group < ApplicationRecord
  has_many :posts
  accepts_nested_attributes_for :posts, allow_destroy: true, reject_if: :reject_posts

  def reject_posts(attributes)
  	attributes['title'].blank? && attributes['content'].blank?
  end
end
