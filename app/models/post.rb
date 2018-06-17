class Post < ApplicationRecord
	validates :title, :content, presence: true
	mount_uploader :image, ImageUploader

	extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def should_generate_new_friendly_id?
   slug.blank? || title_changed?
  end
end
