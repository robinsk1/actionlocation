class Location < ApplicationRecord
  acts_as_taggable_on :tags
  validates :name, presence: true
  validates :description, presence: true
  validates :strap, presence: true

  has_many :photos, :as => :imageable, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
  scope :featured, -> { where(featured: true) }
  scope :banner, -> { where(banner: true) }
  scope :active, -> { where(active: true) }
  geocoded_by :full_address
  after_validation :geocode, if: ->(obj){ obj.full_address.present? and obj.street_address_1_changed? }

  def full_address
    [city, post_code, street_address_1].compact.join(", ")
  end

  def first_photo
    photos.first.image
  end

end
