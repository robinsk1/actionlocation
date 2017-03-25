class Photo < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_attached_file :image, styles: { medium: "700x450#", thumbnail: "50x50#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
